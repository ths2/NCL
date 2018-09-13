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
			
			<causalConnector id="onKeySelectionSet_var">
				<connectorParam name="keyCode"/>
				<connectorParam name="var"/>
				<simpleCondition role="onSelection" key="$keyCode"/>
				<simpleAction role="set" value="$var"/>
			</causalConnector>
			
			<causalConnector id="onKeySelectionStopStart">
				<connectorParam name="keyCode"/>
				<simpleCondition role="onSelection" key="$keyCode"/>
				<compoundAction operator="seq">
					<simpleAction role="stop" max="unbounded" qualifier="par"/>
					<simpleAction role="start" max="unbounded" qualifier="par"/>
				</compoundAction>
			</causalConnector>
			
			<causalConnector id="onKeySelectionStopSet_varStart">
				<connectorParam name="var"/>
				<connectorParam name="keyCode"/>
				<simpleCondition role="onSelection" key="$keyCode"/>
				<compoundAction operator="seq">
					<simpleAction role="stop" max="unbounded" qualifier="par"/>
					<simpleAction role="set" value="$var"/>
					<simpleAction role="start" max="unbounded" qualifier="par"/>
				</compoundAction>
			</causalConnector>	
			
			<causalConnector id="onEndSet_var">
				<connectorParam name="var"/>
				<simpleCondition role="onEnd"/>
				<simpleAction role="set" value="$var"/>
			</causalConnector>	
			
		</connectorBase>
		
	</head>
</ncl>