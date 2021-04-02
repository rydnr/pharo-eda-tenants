# Pharo EDA Tenants

An EDA domain for Tenants.

## Motivation

Some PharoEDA applications need to support multitenancy. In fact, PharoEDA itself included a mandatory `tenant` parameter (but besides that it's tenant agnostic).
This PharoEDA domain defines a simple model for tenants.

## Design

This domain provides a minimalistic design for tenants, and the tools to extend them.

## Usage

First, load it with Metacello:

``` smalltalk
Metacello new repository: 'github://osoco/pharo-eda-tenants:main'; baseline: 'PharoEDATenants'; load
```

## Work in progress

- Add Fame metamodel.
- Add ombu generators.
- Add json schema generators.
- Add changeset generators for RabbitMQ.

## Credits
- Background of the Pharo image by <a href="https://pixabay.com/users/geralt-9301/">Gerd Altmann</a> from <a href="https://pixabay.com/">Pixabay</a>.
