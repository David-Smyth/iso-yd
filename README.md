# Yacht Design Analysis for ISO Standards to meet Recreational Craft Directive (RCD)

This application is intended to be used closely with the ISO standards for
sailing yacht design, specifically:

* ISO 8666 *Small craft -- Principal data*
* ISO 11812 *Small craft -- Watertight cockpits and quick draining cockpits*
	* ISO 12215 *Small craft -- Hull construction and scantlings*
	* Part 5: *Design pressures for monohulls, design stresses, scantlings determination*
	* Part 6: *Structural arrangements and details*
	* Part 8: *Rudders*
	* Part 9: *craft appendages*
* ISO 12216 *Small craft -- Windows, portlights, hatches, deadlights and doors -- Strength and watertightness requirments*
* ISO 12217 Part 2: *Small craft -- Stability and buoyancy assessment and categorization -- Sailing boats of hull length greater than or equal to 6m*


This application requires that the user have their own copy of each of the
above standards. I do not think it will be possible to use this application
without the standards. For example, the application requires the user to
specify <i>h'</i><sub>CE</sub> and without the appropriate ISO
standard document, the user will not be able to correctly determine this value.

The user flow, the way the user works through this application, follows the
flow of the ISO documents. References to the ISO document sections assist the
user in this process of working linearly through the standards, and linearly
through this application, in synchrony.

## How the Yacht Designer Uses This Application

The intent is to allow a given yacht design to change several times, as the
designer follows the common design spiral. The application considers that each
trip around the design spiral results in one or more versions of the design.
Hence, for one design, there may be many versions.

Some things change, some things stay the same between versions. Therefore, its
possible to easily propagate forward the information from a previous version,
and tweak for the next version.

A key part of the ISO standards covers determining the scantlings for the various
parts of the vessel. There are many parts of each vessel that will result in
varying scantling determinations: the area (bottom, topsides, transom, deck, deckhouse
sides, deckhouse top, cockpit, etc) and the structural dimensions (distances between
bulkheads, stringers, frames, curvature, etc) all factor into the strength needed.
Hence, a given design version will have many different areas with different structural
properties and therefore scantlings.

Displacement and center of gravity is another aspect of the design that changes
between versions, and needs to be calculated in several ways for each version of
the yacht design. For example, ISO 12217 requires
displacement when empty, displacement at maximum load, displacement at loaded
arrival condition, displacement at light craft, and displacement in minimum
operating conditions. Of course, a different set of equipment, crew, and fluids
is included in each of these displacement conditions. The application allows the
individual contributions to displacement to be bookkept, with mass, x,y,z location,
and which of the displacement conditions include the mass. This allows the various
mass values, as well as the center of gravity, to be calculated for the designer.

The user experience is intended to follow linearly a reading of the above ISO
standards. Start by reading through ISO 8666, and enter the information mentioned
in the standard. Continue through the rest of the standard documents in order, and
the application will assist in performing calculations and the essential if-then
studies a designer must perform within each design spiral.

## Open Source

This application is initially created by 
<a href="mailto:Capt.David.Smyth@gmail.com?subject=iso-yd">David E. Smyth</a>
under the MIT License, and therefore is and will remain open source software.

## Implementation Technology

This application is implemented using Ruby on Rails, specifically Ruby 2.1.0
and Rails 4.0.2. 

The development process closely follows that suggested by
[Michael Hartl](http://michaelhartl.com/) in 
the [*Ruby on Rails Tutorial*](http://railstutorial.org/). Hence, RSpec is
used for test driven development, with Capybara and Selenium for automated
user testing. Hence it is and will forever remain bug free ;-)

## Other things not yet covered:

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

