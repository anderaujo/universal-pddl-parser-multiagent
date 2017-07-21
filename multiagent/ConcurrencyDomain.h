
#pragma once

#include <parser/Domain.h>

#include <multiagent/ConcurrentAction.h>
#include <multiagent/ConcurrencyPredicate.h>

namespace parser { namespace multiagent {

using pddl::Filereader;

class ConcurrencyDomain : public pddl::Domain {
public:
	using Base = pddl::Domain;

	bool multiagent;	// whether domain is multiagent

	TokenStruct< ConcurrencyPredicate * > cpreds;	// concurrency predicates

	ConcurrencyDomain() : Base(), multiagent( false ) {}

	ConcurrencyDomain( const std::string& s ) : Base(), multiagent( false ) {
		parse(s);
	}

	virtual ~ConcurrencyDomain() {
		// cpreds are also contained in preds, so do not delete them
		// (they'll be deleted in the base class)
	}

	bool parseBlock(const std::string& t, Filereader& f) override {
		if (Base::parseBlock(t, f)) return true;

		return false;
	}

	bool parseRequirement( const std::string& s ) override {
		if (Base::parseRequirement(s)) return true;

		// Parse possible requirements of a multi-agent domain
		if ( s == "MULTI-AGENT" ) multiagent = true;
		else return false;

		return true;
	}

	void parseAction( Filereader & f ) override {
		if ( !preds.size() ) {
			std::cout << "Predicates needed before defining actions\n";
			exit(1);
		}

		f.next();
		pddl::Action * a = 0;

		// If domain is multiagent, parse using AgentAction
		if ( multiagent ) a = new ConcurrentAction( f.getToken() );
		else a = new pddl::Action( f.getToken() );

		a->parse( f, types[0]->constants, *this );

		if ( DOMAIN_DEBUG ) std::cout << a << "\n";
		actions.insert( a );
	}

	std::ostream& print_requirements(std::ostream& os) const override {
		os << "( :REQUIREMENTS";
		if ( equality ) os << " :EQUALITY";
		if ( strips ) os << " :STRIPS";
		if ( costs ) os << " :ACTION-COSTS";
		if ( adl ) os << " :ADL";
		if ( neg ) os << " :NEGATIVE-PRECONDITIONS";
		if ( condeffects ) os << " :CONDITIONAL-EFFECTS";
		if ( typed ) os << " :TYPING";
		if ( temp ) os << " :DURATIVE-ACTIONS";
		if ( nondet ) os << " :NON-DETERMINISTIC";
		if ( multiagent ) os << " :MULTI-AGENT";
		os << " )\n";
		return os;
	}

	virtual std::ostream& print(std::ostream& os) const override {
		os << "( DEFINE ( DOMAIN " << name << " )\n";
		print_requirements(os);

		if ( typed ) {
			os << "( :TYPES\n";
			for ( unsigned i = 1; i < types.size(); ++i )
				types[i]->PDDLPrint( os );
			os << ")\n";
		}

		if ( cons ) {
			os << "( :CONSTANTS\n";
			for ( unsigned i = 0; i < types.size(); ++i )
				if ( types[i]->constants.size() ) {
					os << "\t";
					for ( unsigned j = 0; j < types[i]->constants.size(); ++j )
						os << types[i]->constants[j] << " ";
					if ( typed )
						os << "- " << types[i]->name;
					os << "\n";
				}
			os << ")\n";
		}

		printPredicates( os );

		if ( funcs.size() ) {
			os << "( :FUNCTIONS\n";
			for ( unsigned i = 0; i < funcs.size(); ++i ) {
				funcs[i]->PDDLPrint( os, 1, TokenStruct< std::string >(), *this );
				os << "\n";
			}
			os << ")\n";
		}

		for ( unsigned i = 0; i < actions.size(); ++i )
			actions[i]->PDDLPrint( os, 0, TokenStruct< std::string >(), *this );

		for ( unsigned i = 0; i < derived.size(); ++i )
			derived[i]->PDDLPrint( os, 0, TokenStruct< std::string >(), *this );

		print_addtional_blocks(os);

		os << ")\n";

		return os;
	}

	std::ostream& printPredicates( std::ostream& os ) const {
		os << "( :PREDICATES\n";
		for ( unsigned i = 0; i < preds.size(); ++i ) {
			if ( cpreds.index( preds[i]->name ) == -1 ){
				preds[i]->PDDLPrint( os, 1, TokenStruct< std::string >(), *this );
				os << "\n";
			}
		}
		os << ")\n";

		return os;
	}

	virtual pddl::Condition * createCondition( Filereader & f ) {
		std::string s = f.getToken();

		if ( s == "=" ) return new pddl::Equals;
		if ( s == "AND" ) return new pddl::And;
		if ( s == "EXISTS" ) return new pddl::Exists;
		if ( s == "FORALL" ) return new pddl::Forall;
		if ( s == "INCREASE" ) return new pddl::Increase;
		if ( s == "NOT" ) return new pddl::Not;
		if ( s == "ONEOF" ) return new pddl::Oneof;
		if ( s == "OR" ) return new pddl::Or;
		if ( s == "WHEN" ) return new pddl::When;

		int i = preds.index( s );
		if ( i >= 0 ) {
			return new pddl::Ground( preds[i] );
		}

		i = cpreds.index( s );
		if ( i >= 0 ) {
			return new pddl::Ground( cpreds[i] );
		}
		else {
			return new ConcurrencyPredicate( s );
		}

		f.tokenExit( s );

		return 0;
	}
};

} } // namespaces
