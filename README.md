IEMS
====

An intelligent elevator control system that utilises identification and verification of users via a database to ensure correct authorisation.

It is built as a failed Grails web app on this Git account called Elevator.
The problems we encounted in the previous build will hopefully help us to succeed this time around.

Ideas Cabin Team Members: Sammi Dernie and David Pain

Member Roles: Sammi Dernie Infrastructure and Architecture Lead David Pain Project Lead, Tutor Liason and Innovation Lead

Problems are:
Conventional elevators are inflexible and inefficient; user can wait for elevator only to find it full when it arrives.

Stopping and starting elevators occupies more time than travelling.

Most intelligent elevators can be influenced by "spamming" call buttons; gives system impression more than one user on a particular floor is calling to go to a specific floor.

Resulting response by system then is to reroute elevator/s schedules just to collect one individual and affected users unaware of change of route.

System needs to: 1/. despatch elevators with available capacity only. 2/. despatch elevators that preferably do not inconvenience users currently using the lift/s. 3/. in event of such, the effected users should be informed and reassigned alternate lifts. 4/. park up lifts during hours of low demand. 5/. situate lifts in positions to be most useful during specific times of day. 6/. have the capability of recognising the needs of specific users, such as disabled and blind and adapt accordingly. 7/. enhance the security of the building by restricting travel only to authorised and guest users, with restrictions on guest users. 8/. upon detecting unauthorised users, alert security and direct the user to security for assistance. 9/. upon detecting disabled users, system should alert user "assistance has been summoned" and alert security.

Accompanying UML: Desktop/SoftwareEngineeringAssignment/Software_Engineering_Assignment.uml

URL for project: www.ideascabin.co.uk/elevator

Database: mySQL.

Primary setup. Going to require:

Keypad with 12 buttons to simulate telephone keypad 1-9 + 0 + # + *. Swipe card/palm reader/RFID transponder/barcode reader simulation. Disabled button. Form to input user details on database. Keypad display simulator. 4 elevator overshaft displays simulators.

Procedure: 1/. Identification of User to System. 2/. Identified User calls elevator car. 3/. Identified User informed of car change. 4/. Identified User riding elevator car. 5/. Guest User calls elevator car. 6/. System allocation of car for guest user. 7/. Unidentified/unauthorised user calls car. 8/. Elevator car allocation at different times.

1/. a) Design and populate database. b) Build controller for identification of user to the database using usernames to simulate identification devices. c) On positive identification via pre-defined usernames, change view to show unlocked keypad if authorised or "please got to security" for unathorised. d) On position identification user also to be greeted with "hello "username", would you like to go to" + usual floor ""; e) Star button clears suggested floor. Keypads buttons input floor number. Hash key accepts suggested floor or commits floor choice to system.

2/. a) System must choose an appropriate car that takes into consideration: 1. Current capacity of car, estimated capacity of car after stopping to collect and release users prior to calling floor of our user. 2. Estimated time each available elevator would take to reach user. 3. Time of day, with effect that has on the elevators in use. 4. Needs of the user, whether allowance for disability or blind. b) System must direct user to appropriate car by use of keypad display and/or speaker, followed by overshaft displays.

3/. System should announce change visually/audibly by redirecting waiting users to alternate cars at the displays above elevator shafts.

4/. System should announce current floor as passed visually and audibly if stopping at that particular floor.

5/. System should recognise the guest and alert the invitor of the guests arrival in the building, whilst locking out all keypad buttons with exception of the hash key, as a means of determining the guests awareness, i.e. display at keypad display "DHL press hash key".

6/. System should provide an elevator that is empty for the guests travel and not alert the guest as to the particulars of floors travelled or the destination floor.

7/. System should alert security to possible intrusion and direct unauthorised user to the security office.

8/. System should alter car availability according to different time periods of activity.
