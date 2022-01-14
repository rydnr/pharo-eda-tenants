Class {
	#name : #BaselineOfPharoEDATenants,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoEDATenants
}

{ #category : #baselines }
BaselineOfPharoEDATenants >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			self
				declarePharoEDAIn: spec.
			self declareFameIn: spec.
			self declarePackagesIn: spec.
			self declareGroupsIn: spec ]
]

{ #category : #baselines }
BaselineOfPharoEDATenants >> declareFameIn: spec [
spec
	baseline: 'Fame'
	with: [ spec repository: 'github://moosetechnology/Fame:development/src' ].
	^ spec

]

{ #category : #baselines }
BaselineOfPharoEDATenants >> declareGroupsIn: spec [
	spec
		group: 'core'
			with:
			#(#'EDA-Tenants-Domain');
		group: 'tests'
			with:
			#(#'EDA-Tenants-Domain-Tests');
		group: 'default' with: #('core' 'tests')
]

{ #category : #baselines }
BaselineOfPharoEDATenants >> declarePackagesIn: spec [
	spec package: #'EDA-Tenants-Domain' with: [ spec requires: #('PharoEDA' 'Fame') ];
	package: #'EDA-Tenants-Domain-Tests' with: [ spec requires: #('EDA-Tenants-Domain') ]
]

{ #category : #baselines }
BaselineOfPharoEDATenants >> declarePharoEDAIn: spec [
	spec
		baseline: 'PharoEDA'
		with: [ spec
				repository: 'github://rydnr/pharo-eda:event-listening-b/src'
				 ].
	^ spec

]

{ #category : #baselines }
BaselineOfPharoEDATenants >> project [
	
	| aProject |
	
	aProject := super project.
	aProject loadType: #linear.
	^ aProject.
]
