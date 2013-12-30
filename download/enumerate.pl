actions([install,
	 get_sources,
	 read_changelog,
	 comment_on_release,
	 read_indicia]).

action_os_combo(Act, OS) :-
	member(Act, [install, comment_on_release]),
	OS \= all.
action_os_combo(Act, all) :-
	member(Act, [get_sources, read_changelog, read_indicia]).

subject([swi_prolog,
	 packs,
	 manual,
	 contrib,
	 stuff_in_git]).

os([all,
    windows,
    mac,
    linux]).

os_variant(windows, 32).
os_variant(windows, 64).
os_variant(mac, snow_leopard).
os_variant(linux, ubuntu).
os_variant(linux, debian).
os_variant(linux, redhat).
os_variant(linux, suse).
os_variant(linux, mageia).

version([git_or_dailies,
	 development,
	 stable,
	 old]).

release([latest,
	 all]).

build([binaries,
       sources]).

dl_location([website,
	     git_repo,
	     ppa]).

variant(all, all).
variant(OS, Variant) :-
	os(OS),
	OS \= all,
	os_variant(OS, Variant).

enum :-
	actions(Actions),
	member(Action, Actions),
	subject(Subjects),
	member(Subject, Subjects),
	os(OSes),
	member(OS, OSes),
	action_os_combo(Action, OS),
	variant(OS, Variant),
	version(Versions),
	member(Version, Versions),
	release(R),
	member(Latest, R),
	build(Builds),
	member(Build, Builds),
	dl_location(Locations),
	member(Location, Locations),
	format('~w ~w ~w ~w ~w ~w ~w~n', [Action, Subject,
					  OS, Variant,
					  Version, Latest,
					  Build, Location]),
	fail.





