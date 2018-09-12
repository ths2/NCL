<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Generated	by NCL Eclipse -->
<ncl id="causalConnBase" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>
		
		<connectorBase> <!--Partes Reusáveis-->
			
			<causalConnector id="onBeginStart_delay">
				<connectorParam name="delay"/>
				<simpleCondition role="onBegin" />
				<simpleAction role="start" delay="$delay" max="unbounded" qualifier="par"/>
			</causalConnector>
			
			<causalConnector id="onBeginStart">
				<simpleCondition role="onBegin" />
				<simpleAction role="start" max="unbounded" qualifier="par" />
			</causalConnector>
			
			<causalConnector id="onEndStop">
				<simpleCondition role="onEnd" />
				<simpleAction role="stop" max="unbounded" qualifier="par" />
			</causalConnector>
		</connectorBase>
		
	</head>
</ncl>