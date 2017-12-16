

include "/dependencies_or.iol"

inputPort LocalIn {
Location: "local"
RequestResponse:
  println( string )( void ),
  subscribeSessionListener( string )( void ),
  enableTimestamp( bool )( void ),
  registerForInput( bool )( void ),
  print( string )( void),
  unsubscribeSessionListener( string )( void )
}

outputPort Orchestrator {
Protocol: sodep
RequestResponse:
  println( string )( void ),
  subscribeSessionListener( string )( void ),
  enableTimestamp( bool )( void ),
  registerForInput( bool )( void ),
  print( string )( void),
  unsubscribeSessionListener( string )( void )
Location: ODEP_LOCATION
}

execution{ concurrent }

main
{
  [println ( request )( response ){
    println@Orchestrator( request )( response )
  }]

  [subscribeSessionListener( request )( response ) {
    subscribeSessionListener@Orchestrator( request )( response )
  }]

  [enableTimestamp( request )( response ){
    enableTimestamp@Orchestrator( request )( response )
  }]

  [registerForInput( request )( response ){
    registerForInput@Orchestrator( request )( response )
  }]

  [print( request )( response ){
    print@Orchestrator( request )( response )
  }]

  [unsubscribeSessionListener( request )( response ){
    unsubscribeSessionListener@Orchestrator( request )( response )
  }]
}
