# How to contribute:

1. Before making any changes, please check if there already is an issue describing what you want to
do, if not open an issue on GitHub describing the change you wish to make.
This allows others to assess whether the proposed change is beneficial and if it aligns
with the project goals.

2. Once your issue is reviewed, and if it is confirmed that your change would be useful,
and no one else is currently working on it, you may proceed to make a pull request (PR).

3. When you start working on an issue leave a comment under that issue it so others know who is working on it.

4. When creating your PR, please include a detailed description that outlines exactly
what changes have been introduced. This helps others understand your contribution better.

5. After submitting your PR, kindly wait for your changes to be reviewed.
We appreciate your patience as we work to ensure quality and consistency in the project.

6. If you add new components or replace existing ones, please ensure you read the [wiki article about new components](https://github.com/V3lectronics/SPIRIT/wiki/Suggesting-new-parts)

7. SMD resistors, capacitors and other components that come in very small packages have to be preferably 0603 (if available) or larger. Please use Panasonic components if available, if not use Yageo,
if both are unavailable use whatever you think is reasonable.

8. When adding new components in KiCad please be sure to properly annotate them in the schematics and use the update PCB from schematic tool.
the schematics and PCB must be in sync at all times!

9. All new components should have a Value, Datasheet, MPN field with the correct information filled in. (See power schematic for examples).

10. Please use the newest major release of KiCad.

11. When adding new components make sure to add: symbols, footprints, 3D models. If it's a complex change and you're not sure if the components are the correct ones,
it is ok to add them in a follow up PR.

12. Avoid massive pull requests that are hard to review. It is easier for
everyone if you split your contribution into small, atomic pieces (within reason).

13. Change only the files you need, e.g. if you made a change to the power schematic you probably don't have to make changes to audio.

14. Write all text in english.

15. Please make sure you understand at least the basics of how Git and pull requests work if you plan on using those for your contribution.

# Tasks to do

Here is the [issues list](https://github.com/V3lectronics/SPIRIT/issues). Good luck and please stick to the guidelines for smooth cooperation!

# Contact

V Electronics Discord server with channels for discussing SPIRIT stuff:

>https://discord.gg/zBG4KdHJWx

Project lead maintainer email:

>jwaga76@gmail.com

