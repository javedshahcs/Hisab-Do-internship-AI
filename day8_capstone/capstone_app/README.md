# HisabDo Capstone — Day 8 Scaffold

This is the **capstone project** for the HisabDo Flutter Internship
Program, started on **Day 8** and continuing milestone-by-milestone through
**Day 60**. Today's deliverable is the initial scaffold: folder structure,
routing, theme, and placeholder screens — no business logic yet.

> This project is an **original implementation** inspired by the general
> patterns of khata/ledger apps (see `../analysis/Day8_Technical_Analysis.md`
> for the full write-up). It does not copy HisabDo's (closed-source)
> production code — every architectural decision below was made
> independently for this capstone.

---

## 🗂️ Folder Structure

```
lib/
├── core/                          # Cross-cutting concerns
│   ├── theme/
│   │   ├── app_colors.dart        # Centralized color palette
│   │   └── app_theme.dart         # Light + dark ThemeData
│   ├── routing/
│   │   ├── app_routes.dart        # Route path constants
│   │   └── app_router.dart        # go_router configuration
│   ├── constants/
│   │   └── app_constants.dart     # Spacing scale, durations, app name
│   ├── widgets/
│   │   ├── main_shell.dart        # Bottom-nav shell wrapping all tabs
│   │   └── coming_soon_placeholder.dart
│   └── utils/                     # (empty for now — formatters/validators
│                                     will be added as features need them)
├── features/                      # One folder per business capability
│   ├── splash/presentation/screens/splash_screen.dart
│   ├── dashboard/presentation/screens/dashboard_screen.dart
│   ├── customers/presentation/screens/customer_list_screen.dart
│   ├── expenses/presentation/screens/expense_list_screen.dart
│   ├── reports/presentation/screens/reports_screen.dart
│   └── settings/presentation/screens/settings_screen.dart
└── main.dart
```

### Why feature-first (not `screens/`, `widgets/` at the root)?

A 60-day capstone will accumulate a lot of code. Grouping everything by
**feature** (Customers, Expenses, Reports, etc.) instead of by **file type**
means each module can grow — gaining its own `data/`, `domain/`, and
`widgets/` subfolders as needed — without one giant shared `screens/`
folder becoming unmanageable. `core/` stays intentionally small and only
holds things genuinely shared across every feature (theme, routing,
constants, truly reusable widgets).

---

## 🧭 Routing — `go_router`

`lib/core/routing/app_router.dart` defines a single `GoRouter` instance:

- `/` — Splash screen (standalone, outside the bottom-nav shell)
- A `StatefulShellRoute.indexedStack` wraps the 5 primary tabs
  (Dashboard, Customers, Expenses, Reports, Settings) inside
  `MainShell` (a `BottomNavigationBar`). Each tab keeps its own
  navigation stack and scroll position when you switch away and back —
  standard behavior for a multi-module app like this one.

**Why `go_router` over plain `Navigator`?** It gives declarative,
centralized route definitions (no scattered `Navigator.push` calls with
hardcoded widget constructors), built-in deep-link support, and a clean
way to model the shell + nested-tab structure this app needs. As detail
screens are added (e.g. `/customers/:id`), they'll be nested under the
relevant branch.

---

## 🎨 Theme

`lib/core/theme/app_colors.dart` holds every raw color value used in the
app. `lib/core/theme/app_theme.dart` builds a light and a dark `ThemeData`
from a single seed color (`ColorScheme.fromSeed`), with `AppBarTheme`,
`CardTheme`, `InputDecorationTheme`, `ElevatedButtonThemeData`, and
`BottomNavigationBarThemeData` all pre-configured. `main.dart` wires both
themes in with `themeMode: ThemeMode.system`, so the app automatically
follows the device's light/dark setting.

Screens should always read styling via `Theme.of(context)` rather than
hardcoding colors — this is what makes future re-theming a one-file change.

---

## 🧱 Initial Screens (Day 8)

Every tab currently renders a `ComingSoonPlaceholder` — a shared widget
with an icon, title, and description — so the navigation shell is fully
functional and demonstrable today, even though feature logic hasn't been
built yet. This will be replaced screen-by-screen in upcoming milestones.

---

## 📦 Packages Used

| Package | Purpose |
|---|---|
| `go_router` | Declarative routing + bottom-nav shell |
| `provider` | State management (carried forward from Day 6–7; may evolve per future milestones) |
| `sqflite` / `path` | Local SQLite database (added now, wired up once the Customers/Expenses features start persisting data) |
| `intl` | Date/number formatting |

---

## ▶️ How to Run

```bash
cd capstone_app
flutter create .   # generates android/, ios/, etc. — only needed once
flutter pub get
flutter run
```

---

## 🗺️ Roadmap (high-level, to be refined milestone by milestone)

1. **Day 8** — Scaffold: folders, routing, theme, placeholder screens ✅
2. Customers feature: model, SQLite table, CRUD, ledger UI
3. Expenses feature (reuse/evolve patterns from Day 4–7 work)
4. Dashboard: real totals wired to the database
5. Reports: charts + summaries
6. Settings: language, currency, security, backup/restore
7. Polish pass: accessibility, performance, error handling
8. ... continuing through Day 60

See `../analysis/Day8_Technical_Analysis.md` for the full feature/UX
analysis this roadmap is based on.
