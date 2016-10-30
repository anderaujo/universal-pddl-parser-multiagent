( DEFINE ( DOMAIN TABLEMOVER )
( :REQUIREMENTS :CONDITIONAL-EFFECTS :TYPING :MULTI-AGENT )
( :TYPES
	AGENT - LOCATABLE
	LOCATABLE - OBJECT
	BLOCK - LOCATABLE
	TABLE - LOCATABLE
	ROOM - OBJECT
	SIDE - OBJECT
)
( :PREDICATES
	( ON-TABLE ?BLOCK0 - BLOCK ?TABLE1 - TABLE )
	( ON-FLOOR ?BLOCK0 - BLOCK )
	( DOWN ?SIDE0 - SIDE )
	( CLEAR ?SIDE0 - SIDE )
	( AT-SIDE ?AGENT0 - AGENT ?SIDE1 - SIDE )
	( LIFTING ?AGENT0 - AGENT ?SIDE1 - SIDE )
	( HAS-SIDE ?TABLE0 - TABLE ?SIDE1 - SIDE )
	( INROOM ?LOCATABLE0 - LOCATABLE ?ROOM1 - ROOM )
	( AVAILABLE ?AGENT0 - AGENT )
	( HANDEMPTY ?AGENT0 - AGENT )
	( HOLDING ?AGENT0 - AGENT ?BLOCK1 - BLOCK )
	( CONNECTED ?ROOM0 - ROOM ?ROOM1 - ROOM )
)
( :CONCURRENT
	( PICKUP-FLOOR ?AGENT0 - AGENT ?BLOCK1 - BLOCK ?ROOM2 - ROOM )
	( PICKUP-TABLE ?AGENT0 - AGENT ?BLOCK1 - BLOCK ?ROOM2 - ROOM ?TABLE3 - TABLE )
	( PUTDOWN-TABLE ?AGENT0 - AGENT ?BLOCK1 - BLOCK ?ROOM2 - ROOM ?TABLE3 - TABLE )
	( TO-TABLE ?AGENT0 - AGENT ?ROOM1 - ROOM ?SIDE2 - SIDE ?TABLE3 - TABLE )
	( MOVE-TABLE ?AGENT0 - AGENT ?ROOM1 - ROOM ?ROOM2 - ROOM ?SIDE3 - SIDE ?TABLE4 - TABLE )
	( LIFT-SIDE ?AGENT0 - AGENT ?SIDE1 - SIDE ?TABLE2 - TABLE )
	( LOWER-SIDE ?AGENT0 - AGENT ?SIDE1 - SIDE ?TABLE2 - TABLE )
)
( :ACTION PICKUP-FLOOR
  :AGENT ?AGENT - AGENT
  :PARAMETERS ( ?AGENT1 - AGENT ?BLOCK2 - BLOCK ?ROOM3 - ROOM )
  :PRECONDITION
	( AND
		( ON-FLOOR ?BLOCK2 )
		( INROOM ?AGENT ?ROOM3 )
		( INROOM ?BLOCK2 ?ROOM3 )
		( AVAILABLE ?AGENT )
		( HANDEMPTY ?AGENT )
		( FORALL
			( ?AGENT4 - AGENT )
			( NOT ( PICKUP-FLOOR ?AGENT4 ?BLOCK2 ?ROOM3 ) )
		)
	)
  :EFFECT
	( AND
		( NOT ( ON-FLOOR ?BLOCK2 ) )
		( NOT ( HANDEMPTY ?AGENT ) )
		( HOLDING ?AGENT ?BLOCK2 )
	)
)
( :ACTION PUTDOWN-FLOOR
  :AGENT ?AGENT - AGENT
  :PARAMETERS ( ?AGENT1 - AGENT ?BLOCK2 - BLOCK )
  :PRECONDITION
	( AND
		( AVAILABLE ?AGENT )
		( HOLDING ?AGENT ?BLOCK2 )
	)
  :EFFECT
	( AND
		( ON-FLOOR ?BLOCK2 )
		( HANDEMPTY ?AGENT )
		( NOT ( HOLDING ?AGENT ?BLOCK2 ) )
	)
)
( :ACTION PICKUP-TABLE
  :AGENT ?AGENT - AGENT
  :PARAMETERS ( ?AGENT1 - AGENT ?BLOCK2 - BLOCK ?ROOM3 - ROOM ?TABLE4 - TABLE )
  :PRECONDITION
	( AND
		( ON-TABLE ?BLOCK2 ?TABLE4 )
		( INROOM ?AGENT ?ROOM3 )
		( INROOM ?TABLE4 ?ROOM3 )
		( AVAILABLE ?AGENT )
		( HANDEMPTY ?AGENT )
		( FORALL
			( ?AGENT5 - AGENT )
			( NOT ( PICKUP-TABLE ?AGENT5 ?BLOCK2 ?ROOM3 ?TABLE4 ) )
		)
	)
  :EFFECT
	( AND
		( NOT ( ON-TABLE ?BLOCK2 ?TABLE4 ) )
		( NOT ( HANDEMPTY ?AGENT ) )
		( HOLDING ?AGENT ?BLOCK2 )
	)
)
( :ACTION PUTDOWN-TABLE
  :AGENT ?AGENT - AGENT
  :PARAMETERS ( ?AGENT1 - AGENT ?BLOCK2 - BLOCK ?ROOM3 - ROOM ?TABLE4 - TABLE )
  :PRECONDITION
	( AND
		( INROOM ?AGENT ?ROOM3 )
		( INROOM ?TABLE4 ?ROOM3 )
		( AVAILABLE ?AGENT )
		( HOLDING ?AGENT ?BLOCK2 )
	)
  :EFFECT
	( AND
		( ON-TABLE ?BLOCK2 ?TABLE4 )
		( HANDEMPTY ?AGENT )
		( NOT ( HOLDING ?AGENT ?BLOCK2 ) )
	)
)
( :ACTION TO-TABLE
  :AGENT ?AGENT - AGENT
  :PARAMETERS ( ?AGENT1 - AGENT ?ROOM2 - ROOM ?SIDE3 - SIDE ?TABLE4 - TABLE )
  :PRECONDITION
	( AND
		( CLEAR ?SIDE3 )
		( HAS-SIDE ?TABLE4 ?SIDE3 )
		( INROOM ?AGENT ?ROOM2 )
		( INROOM ?TABLE4 ?ROOM2 )
		( AVAILABLE ?AGENT )
	)
  :EFFECT
	( AND
		( NOT ( CLEAR ?SIDE3 ) )
		( AT-SIDE ?AGENT ?SIDE3 )
		( NOT ( AVAILABLE ?AGENT ) )
	)
)
( :ACTION LEAVE-TABLE
  :AGENT ?AGENT - AGENT
  :PARAMETERS ( ?AGENT1 - AGENT ?SIDE2 - SIDE )
  :PRECONDITION
	( AND
		( AT-SIDE ?AGENT ?SIDE2 )
		( NOT ( LIFTING ?AGENT ?SIDE2 ) )
	)
  :EFFECT
	( AND
		( CLEAR ?SIDE2 )
		( NOT ( AT-SIDE ?AGENT ?SIDE2 ) )
		( AVAILABLE ?AGENT )
	)
)
( :ACTION MOVE-TABLE
  :AGENT ?AGENT - AGENT
  :PARAMETERS ( ?AGENT1 - AGENT ?ROOM2 - ROOM ?ROOM3 - ROOM ?SIDE4 - SIDE ?TABLE5 - TABLE )
  :PRECONDITION
	( AND
		( LIFTING ?AGENT ?SIDE4 )
		( HAS-SIDE ?TABLE5 ?SIDE4 )
		( INROOM ?AGENT ?ROOM2 )
		( CONNECTED ?ROOM2 ?ROOM3 )
	)
  :EFFECT
	( AND
		( NOT ( INROOM ?AGENT ?ROOM2 ) )
		( NOT ( INROOM ?TABLE5 ?ROOM2 ) )
		( INROOM ?AGENT ?ROOM3 )
		( INROOM ?TABLE5 ?ROOM3 )
		( FORALL
			( ?BLOCK6 - BLOCK )
			( WHEN
				( ON-TABLE ?BLOCK6 ?TABLE5 )
				( AND
					( NOT ( INROOM ?BLOCK6 ?ROOM2 ) )
					( INROOM ?BLOCK6 ?ROOM3 )
				)
			)
		)
	)
)
( :ACTION LIFT-SIDE
  :AGENT ?AGENT - AGENT
  :PARAMETERS ( ?AGENT1 - AGENT ?SIDE2 - SIDE ?TABLE3 - TABLE )
  :PRECONDITION
	( AND
		( DOWN ?SIDE2 )
		( AT-SIDE ?AGENT ?SIDE2 )
		( HAS-SIDE ?TABLE3 ?SIDE2 )
		( HANDEMPTY ?AGENT )
	)
  :EFFECT
	( AND
		( NOT ( DOWN ?SIDE2 ) )
		( LIFTING ?AGENT ?SIDE2 )
		( NOT ( HANDEMPTY ?AGENT ) )
	)
)
( :ACTION LOWER-SIDE
  :AGENT ?AGENT - AGENT
  :PARAMETERS ( ?AGENT1 - AGENT ?SIDE2 - SIDE ?TABLE3 - TABLE )
  :PRECONDITION
	( AND
		( LIFTING ?AGENT ?SIDE2 )
		( HAS-SIDE ?TABLE3 ?SIDE2 )
	)
  :EFFECT
	( AND
		( DOWN ?SIDE2 )
		( NOT ( LIFTING ?AGENT ?SIDE2 ) )
		( HANDEMPTY ?AGENT )
	)
)
)