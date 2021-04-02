"
An aggregate root for Tenants. They're used to partition the event store so data is logically (or physically) separated.

This class is expected to be the parent class of the actual tenant aggregate of a target domain, since each use case would need different data specific for each tenant.

As an aggregate root, it's expected to be able to handle incoming commands or messages, and emit tenant-specific events. The actual format of those contracts is expected to be defined in the descendent class.
"
Class {
	#name : #EDATenant,
	#superclass : #EDAAggregateRoot,
	#category : #'EDA-Tenants-Domain'
}
