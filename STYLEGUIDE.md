# Styleguide
------------

### Introduction
----------------

This document contains some high-level philosophy and policy decisions for the flutter_code project, and a description of specific style issues for some parts of the codebase. This styleguide is _language-agnostic_ and should apply to all languages being used in the project. For language-specific guidelines, see `STYLEGUIDE_$`, where `$` is the name of the corresponding language. Heavily inspired by the [Flutter project styleguide](https://github.com/flutter/flutter/wiki/Style-guide-for-Flutter-repo).

## Table of Contents
--------------------
- [Introduction](#introduction)
- [Table of Contents](table-of-contents)
- [Overview](#overview)
- [Principles](#principles)
- [Policies](#policies)
- [Documentation](#documentation)
- [Coding Patterns](#coding-patterns)
- [Naming](#naming)
- [Comments](#comments)

### Overview
------------

This document describes our approach to designing and programming flutter_code, from high-level architectural principles all the way to documentation rules. These are our norms, written down so that we can easily convey our shared understanding with new team members.

The primary goal of these style guidelines is to improve code readability so that everyone, whether reading the code for the first time or maintaining it for years, can quickly determine what the code does. Secondary goals are to design systems that are simple, to increase the likelihood of catching bugs quickly, and avoiding arguments when there are disagreements over subjective matters.


### Principles
--------------

#### Concise programming

Write what you need and no more, but when you write it, do it right.

Avoid implementing features you don’t need. You can’t design a feature without knowing what the constraints are. Implementing features "for completeness" results in unused code that is expensive to maintain, learn about, document, test, etc.

When you do implement a feature, implement it the right way. Avoid workarounds. Workarounds merely kick the problem further down the road, but at a higher cost: someone will have to relearn the problem, figure out the workaround and how to dismantle it (and all the places that now use it), and implement the feature. It’s much better to take longer to fix a problem properly, than to be the one who fixes everything quickly but in a way that will require cleaning up later.

This is an encouragement to take on the larger effort necessary to perform a proper fix for a problem rather than just applying a band-aid.

All in all, try to write as little as possible. The larger the codebase size gets, the harder it will be to maintain, let alone explain to a new member.

#### Predictable programming

Write code in a consistent and predictable manner.

When you write code the same way all the time, other people can get accustomed to your stylistic preferences, enabling them to understand your code better and find bugs earlier.

Even better, if everybody follows this styleguide and everybody writes more or less in the same predicatble way, the codebase will have a uniform look, and it will be maintained with much more confidence. Code that's completely different to what people are used to reading can need a huge cognitive load to understand, making everybody unproductive. The majority of our time will be reading code, so make everyone's life easier.

Predictable APIs that the developer feels gives them control are generally preferred over APIs that mostly do the right thing but don’t give the developer any way to adjust the results. Predictability is reassuring.

Lastly, if anyone tell you at any point that your code is _boring_, consider that as a significant compliment - that person read your code and didn't sweat it.

#### Write Test, Find Bug

When you fix a bug, first write a test that fails, then fix the bug and verify the test passes.

When you implement a new feature, write tests for it. We use Behavioral Driven Development as our main testing strategy, which serves us a great way in documenting and understanding our code in depth and the domain more maturely. Thus, it is of great importance that every new feature is accompanied by a corresponding BDD feature.

Check the code coverage to make sure every line of your new code is tested. If something isn’t tested, it is very likely to regress or to get "optimized away". If you want your code to remain in the codebase, you should make sure to test it.

Don’t submit code with the promise to "write tests later". Just take the time to write the tests properly and completely in the first place.

#### Avoid interleaving multiple concepts together

Each API should be self-contained and should not know about other features. Interleaving concepts leads to _complexity_.

#### Only log actionable messages to the console

If the logs contain messages that the user can safely ignore, then they will do so, and eventually their logs will be so chatty and verbose that they will miss the critical messages. Therefore, only log actual errors and actionable warnings (warnings that can always be dealt with and fixed).

Never log "informational" messages by default. It is possible that it may be useful to have messages on certain topics while debugging those topics. To deal with that, have debug flags you can enable that enable extra logging for particular topics.

#### Error messages should be useful

Every time you find the need to report an error, consider how you can make this the most useful and helpful error message ever.

Put yourself in the shoes of whoever sees that error message. Why did they see it? What can we do to help them? They are at a crossroads, having seen your error message: they can either get frustrated, or they can feel thankful that the error helped them resolve an actual issue. Every error message is an opportunity to make someone love our product.


### Policies
------------

This section defines some policies that we have decided to honor. In the absence of a very specific policy in this section, the general principles in the section above are controlling.

#### Avoid abandonware

Code that is no longer maintained should be deleted or archived in some way that clearly indicates that it is no longer maintained.

For example, we delete rather than commenting out code. Commented-out code will bitrot too fast to be useful, and will confuse people maintaining the code.

Similarly, all our repositories should have an owner that does regular triage of incoming issues and PRs, and fixes known issues. Repositories where nobody is doing triage at least monthly, preferably more often, should be deleted, hidden, or otherwise archived.

#### Code that is not copyrighted "The flutter_code Authors"

All code in this repository must be contributed by developers who have signed the [CLA](CONTRIBUTOR_LICENSE_AGREEMENT.md), and must be licensed using our license with a copyright referencing "The flutter_code Authors", except if it is "third party code".

"Third party code" that is not part of a flutter_code package must be in a subdirectory of a `third_party` directory at the root of the relevant repository, and the subdirectory in question must contain a `LICENSE` file that details the license covering that code and a `README` describing the provenance of that code.

"Third party code" that is part of a flutter_code package be in a subdirectory of a `third_party` directory in that package, and the subdirectory in question must contain a `LICENSE` file that details the license covering that code and a `README` describing the provenance of that code.

All licenses included in this manner must have been reviewed and determined to be legally acceptable licenses.

All such "third party code" must either be a fork for which we take full responsibility, or there must be an automated rolling mechanism that keeps the code up to date when the upstream source changes.

In general it is strongly recommended that we avoid any such code unless strictly necessary. In particular, we aim for all code in our repository to be single-licensed, which is why it does not contain any "third party code" at all.

Any code contributed that we deem that it does abide with our licensing policy will unfortunately be rejected, so be really diligent when using "third party code". Read more information about our _[licensing policy here](LICENSE)_.

#### Public API destructive changes are disallowed

PRs that change a public API in a destructive way will be rejected.

By _destructive_, we mean changes that:
- Change the signature of an API function/member/endpoint,
- Delete an existing API function/member/endpoint,
- Alterning the internals of an API function in a way that its usage/purpose is altered signifanctly.

If for any reason you feel that such a change should occur in the API, make sure to mark that API function/member/endpoint as `deprecated`, and provide a new function/member/endpoint with a new name. That way we can guarantee that what already works will work in the future as well.


### Documentation
-----------------

#### Answer your own questions straight away

If you find yourself asking a question about our systems, please place whatever answer you subsequently discover into the documentation in the same place where you first looked for the answer. That way, the documentation will consist of answers to real questions, where people would look to find them. Do this right away; it’s fine if your otherwise-unrelated PR has a bunch of documentation fixes in it to answer questions you had while you were working on your PR.

We try to avoid reliance on "oral tradition". It should be possible for anyone to begin contributing without having had to learn all the secrets from existing team members. To that end, all processes should be documented (typically on the wiki), code should be self-explanatory or commented, and conventions should be written down, e.g. in our style guide.

There is one exception: it’s better to not document something in our API docs than to document it poorly. This is because if you don’t document it, it still appears on our list of things to document. Feel free to remove documentation that violates our rules below (especially the next one), so as to make it reappear on the list.

#### Avoid useless documentation

If someone could have written the same documentation without knowing anything about the class other than its name, then it’s useless.

Avoid checking in such documentation, because it is no better than no documentation but will prevent us from noticing that the identifier is not actually documented.

Example:

```dart
// BAD:

/// The background color.
final Color backgroundColor;

/// Half the diameter of the circle.
final double radius;


// GOOD:

/// The color with which to fill the circle.
///
/// Changing the background color will cause the avatar to animate to the new color.
final Color backgroundColor;

/// The size of the avatar.
///
/// Changing the radius will cause the avatar to animate to the new size.
final double radius;
```

#### Writing prompts for good documentation

If you are having trouble coming up with useful documentation, here are some prompts that might help you write more detailed prose:

- If someone is looking at this documentation, it means that they have a question which they couldn’t answer by guesswork or by looking at the code. What could that question be? Try to answer all questions you can come up with.
- If you were telling someone about this property, what might they want to know that they couldn’t guess? For example, are there edge cases that aren’t intuitive?
- Consider the type of the property or arguments. Are there cases that are outside the normal range that should be discussed? e.g. negative numbers, non-integer values, transparent colors, empty arrays, infinities, NaN, null? Discuss any that are non-trivial.
- Does this member interact with any others? For example, can it only be non-null if another is null? Will this member only have any effect if another has a particular range of values? Will this member affect whether another member has any effect, or what effect another member has?
- Does this member have a similar name or purpose to another, such that we should point to that one, and from that one to this one? Use the `See also: pattern.`
- Are there timing considerations? Any potential race conditions?

#### Avoid unnecessary words

It’s easy to use more words than necessary. Avoid doing so where possible, even if the result is somewhat terse.

#### Refactor the code when the documentation would be incomprehensible

If writing the documentation proves to be difficult because the API is convoluted, then rewrite the API rather than trying to document it.

#### Canonical terminology

The documentation should use consistent terminology:
- _method_ - a member of a class that is a non-anonymous closure
- _function_ - a callable non-anonymous closure that isn’t a member of a class
- _parameter_ - a variable defined in a closure signature and possibly used in the closure body.
- _argument_ - the value passed to a closure when calling it.

Prefer the term "call" to the term "invoke" when talking about jumping to a closure.

Prefer the term "member variable" to the term "instance variable" when talking about variables associated with a specific object.

Typedef dartdocs should usually start with the phrase "Signature for…​".

#### Use correct grammar

Avoid starting a sentence with a lowercase letter.

```
// BAD

/// [foo] must not be null.

// GOOD

/// The [foo] argument must not be null.
```

Similarly, end all sentences with a period.

#### Use the passive voice; recommend, do not require; never say things are simple

Never use "you" or "we". Avoid the imperative voice. Avoid value judgements.

Rather than telling someone to do something, use "Consider", as in “To obtain the foo, consider using [bar].”.

In general, you don’t know who is reading the documentation or why. Someone could have inherited a terrible codebase and be reading our documentation to find out how to fix it; by saying "you should not do X" or "avoid Y" or "if you want Z", you will put the reader in a defensive state of mind when they find code that contradicts the documentation (after all, they inherited this codebase, who are we to say that they’re doing it wrong, it’s not their fault).

For similar reasons, never use the word "simply", or say that the reader need "just" do something, or otherwise imply that the task is easy. By definition, if they are looking at the documentation, they are not finding it easy.

#### Provide sample code

Sample code helps developers learn your API quickly. Writing sample code also helps you think through how your API is going to be used by app developers.


### Coding Patterns
-------------------

#### Never check if a port is available before using it, never add timeouts, and other race conditions.

If you look for an available port, then try to open it, it’s extremely likely that several times a week some other code will open that port between your check and when you open the port, and that will cause a failure.
> Instead, have the code that opens the port pick an available port and return it, rather than being given a (supposedly) available port.

If you have a timeout, then it’s very likely that several times a week some other code will happen to run while your timeout is running, and your "really conservative" timeout will trigger even though it would have worked fine if the timeout was one second longer, and that will cause a failure.
> Instead, have the code that would time out just display a message saying that things are unexpectedly taking a long time, so that someone interactively using the tool can see that something is fishy, but an automated system won’t be affected.

Race conditions like this are the primary cause of flaky tests, which waste everyone’s time.

Similarly, avoid delays or sleeps that are intended to coincide with how long something takes. You may think that waiting two seconds is fine because it normally takes 10ms, but several times a week your 10ms task will actually take 2045ms and your test will fail because waiting two seconds wasn’t long enough.
> Instead, wait for a triggering event.

#### Avoid mysterious and magical numbers that lack a clear derivation

Numbers in tests and elsewhere should be clearly understandable. When the provenance of a number is not obvious, consider either leaving the expression or adding a clear comment or a diagram.

#### Test APIs belong in the test frameworks

Mechanisms that exist for test purposes do not belong in the core libraries, they belong in test harnesses. This keeps the cost of the main library down in production and avoids the risk that people might abuse test APIs.

#### Separation of concerns

Separate logic, state, and presentation to different files.

It's highly encouraged to differentiate between what constitutes business logic, app state, and app presentation. This does not only reduce the cognitive load required to understand a feature's flow, but also enables separate evolving of each of its aspects. For example, we can change how we present something without ever worrying of causing an invalid state.

#### Do not create unnecessary proxy classes

Separation of concerns and abstraction are nice tools and considerations, but most often are not needed. If something isn't needed right now, it does not have to be abstracted so that it supports a fetaure _in the future_. That feature might never be needed, and a layer of indirection in that case just adds complexity. Having 15 editors tabs open to undestand a simple feature is a *killer* of productivity.

#### Rule of three

Abstract logic only when its repeated more than 2 times.

Even if you already need to reuse a certain functionality in another feature/file, resist the urge to abstract it and move it to a `common` folder. This often leads to unnecessary big auxiliary folders, reducing the understanding of the overall domain. Consider abstracting logic if and only if you need the same functionality in 3 or more places.

Having some duplicate code, specialized for a feature with more descriptive naming and direct usage, is much more preferrable than using generic utility functions.

Lastly, if you ever find yourself needing to modify a utility function to "handle a specific case", that should be a strong indicator that your use case does not need to be abstracted, but rather implement some custom functionality to deal with your problem.

#### Have as clear as possible code boundaries

As much as possible, pretend that you are working on a feature that is standalone, not part of the project.

In order to evovle our systems over time, its imperative that we minimize _code_ *and* _logical_ dependencies between features. A feature should probably not need to know about how it is going to be used in that particular system, specifically.

Internally, sub-categorize feature functionality as you may see fit, but try not to modularize too much without a valid reason. Deep tree hierarchies can be as confusing as big files, so decisions have to be made with care.

That being said, in order to keep code concerns separate, divide your code in an `api` part and an `internal` part, each in a subdirectory respectively. The code in the `api` directory should depend on the `internal` folder, but not vice-versa. Implement the required internal logic without making any assumptions about how the API of that feature is going to be, because APIs change. Goal of the `internal` folder is to solve a business problem, while the `api`'s concern is to distribute that solution. How a solution is distributed or requested should have no impact on how it is solved.

#### Do not depend to other packages if you can avoid it

Both external and internal dependencies to other packages can introduce bugs hard to track.

Bugs introduced due to third-party code may have nothing to do with the business logic, but rather on a misinterpretation of how the package is suppossed to be used or bug in that package that may not be fixed in the near future, having to deploy nasty workarounds until then.

#### KISS

_Keep it simple stupid_.

### Naming
----------

#### Avoid abbreviations

Unless the abbreviation is more recognizable than the expansion (e.g. `XML`, `HTTP`, `JSON`), expand abbrevations when selecting a name for an identifier. In general, avoid one-character names unless one character is idiomatic (for example, prefer `index` over `i`, but prefer `x` over `horizontalPosition`).

#### Be descriptive, but concise

A variable's usage purpose should be clear by its name.

However, although there isn't any hard limit on the max number of characters that can be used, prefer keeping names short enough, so that the don'tmake lines unavoidably large.

#### Naming rules for typedefs and function variables

When naming callbacks, use `FooCallback` for the typedef, `onFoo` for the callback argument or property, and `handleFoo` for the method that is called. If `Foo` is a verb, prefer the present tense to the past tense (e.g. `onTap` instead of `onTapped`).

If you have a callback with arguments but you want to ignore the arguments, give the type and names of the arguments anyway. That way, if someone copies and pastes your code, they will not have to look up what the arguments are.

Never call a method `onFoo`. If a property is called `onFoo` it must be a function type. (For all values of "Foo".)

Prefer using `typedef`s to declare callbacks. Typedefs benefit from having documentation on the type itself and make it easier to read and find common callsites for the signature.

#### Spell words in identifiers and comments correctly

Our primary source of truth for spelling is the [Material Design Specification](https://material.google.com/). Our secondary source of truth is dictionaries.

Avoid "cute" spellings. For example, 'colors', not 'colorz'.

Prefer US English spellings. For example, 'colorize', not 'colourise', and 'canceled', not 'cancelled'.

Prefer compound words over "cute" spellings to avoid conflicts with reserved words. For example, 'classIdentifier', not 'klass'.

#### Avoid double negatives in APIs

Name your boolean variables in positive ways, such as "enabled" or "visible", even if the default value is true.

This is because, when you have a property or argument named "disabled" or "hidden", it leads to code such as `input.disabled = false` or `widget.hidden = false` when you’re trying to enable or show the widget, which is very confusing.

#### Qualify variables and methods used only for debugging

If you have variables or methods (or even classes!) that are only used in debug mode, prefix their names with `debug` or` _debug` (or, for classes, `_Debug`).

Do not use debugging variables or methods (or classes) in production code.

### Comments
------------

#### Explain complex algorithmic flows

Use comments to provide insight on custom algorithmic flows.

Whether it is a well-known algorithm or a custom algorithm that solves a business use case, if it has multiple steps and spans multiple lines, consider if one can grasp what it is doing with a quick glance. If the answer is "no", consider adding some sort explaination describing what are the steps of the algorithm.

Do not unnecessarily comment simple logic. Although "simple", is not a universal standard, long files due to unnecessary comments can be as confusing as an undocumented complex algorithm. Add a comment only if you think someone would wish "only if this section had some comments...".

#### Avoid checking in comments that ask questions

Find the answers to the questions, or describe the confusion, including references to where you found answers.

If commenting on a workaround due to a bug, also leave a link to the issue and a TODO to clean it up when the bug is fixed.

Example:
```
// BAD:

// What should this be?

// This is a workaround.


// GOOD:

// According to this specification, this should be 2.0, but according to that
// specification, it should be 3.0. We split the difference and went with
// 2.5, because we didn't know what else to do.

// TODO(username): Converting color to RGB because class Color doesn't support
//                 hex yet. See http://link/to/a/bug/123
```

TODOs should include the string TODO in all caps, followed by the GitHub username of the person with the best context about the problem referenced by the TODO in parenthesis. A TODO is not a commitment that the person referenced will fix the problem, it is intended to be the person with enough context to explain the problem. Thus, when you create a TODO, it is almost always your username that is given.

Including an issue link in a TODO description is required.
