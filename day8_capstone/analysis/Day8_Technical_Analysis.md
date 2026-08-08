# Day 8 – Capstone Project: Technical Analysis of HisabDo

**Track:** Flutter | **Internship:** HisabDo Flutter Internship Program
**Analyst:** _[Your Name]_
**Date:** _[Submission Date]_

---

## ⚠️ A Note on Methodology (read this first)

This analysis was prepared using **HisabDo's official Google Play Store
listing** (app description, feature list, screenshots, and public reviews —
[link](https://play.google.com/store/apps/details?id=com.usman.hisabdo)),
because the environment used to prepare this document does not have Google
Play access to install and click through the live APK.

Everything below is split into two kinds of statements:

- 🟢 **Confirmed** — directly stated in the official store listing/description.
- 🟡 **Inferred / To verify** — a reasonable engineering guess based on the
  feature set and common patterns for khata/ledger apps, which **you should
  confirm by actually installing and using the app on your own device**, as
  the task requires. Update this document with your real findings.

This keeps the document honest rather than presenting guesses as facts.

---

## 0. What HisabDo Actually Is 🟢

HisabDo is **not** a simple personal expense tracker — it's a **digital
khata (ledger) book** aimed at shopkeepers, retailers, wholesalers,
freelancers and small business owners. Its core value proposition is
managing **udhar (credit), customer ledgers, receivables/payables**, on top
of a secondary daily expense tracker. Key confirmed capabilities:

- Customer ledger management (money given / money received / running balance)
- Daily expense tracking (business + personal)
- Business dashboard (total receivable, payable, expenses, balances)
- PDF export of ledger/statements, shareable via WhatsApp/email
- Backup & restore (local)
- Biometric / PIN app-lock security
- WhatsApp & SMS payment reminders
- Multi-language (English, Urdu, Hindi, Arabic, Roman Urdu)
- Multi-currency (PKR, INR, USD, more planned)
- Built-in calculator
- 100% offline, local-first database — "your data never leaves your device"
- Rated 5.0★ (31 reviews at time of writing); reviews consistently praise
  simplicity, speed, and stability

This context matters a lot for the rest of the analysis — a khata app has
fundamentally different UX priorities (fast data entry, ledger clarity,
trust/security) than a personal budgeting app.

---

## 1. Complete Screen List

| # | Screen | Status | Purpose |
|---|--------|--------|---------|
| 1 | Splash Screen | 🟡 | Branding, app initialization, local DB warm-up |
| 2 | Onboarding / Language Select | 🟡 | First-launch language & currency setup (given multi-language/currency support) |
| 3 | App Lock (PIN/Biometric) | 🟢 (feature confirmed) | Security gate before dashboard, on app resume |
| 4 | Dashboard / Home | 🟢 (feature confirmed) | Business overview: total receivable, payable, expenses, balances |
| 5 | Customer List | 🟡 | List of all customers with running balance, search bar |
| 6 | Customer Detail / Ledger | 🟢 (feature confirmed) | Full transaction history for one customer |
| 7 | Add Transaction (Give/Receive) | 🟡 | Log udhar given or payment received, with note |
| 8 | Expense List | 🟢 (feature confirmed) | All logged expenses |
| 9 | Add/Edit Expense | 🟡 | Form: title, amount, category, date |
| 10 | Reports & Insights | 🟢 (feature confirmed) | Income/expense/balance summaries |
| 11 | PDF Statement Preview / Export | 🟢 (feature confirmed) | Generate & share ledger PDF |
| 12 | Backup & Restore | 🟢 (feature confirmed) | Manual backup creation and restore |
| 13 | Calculator | 🟢 (feature confirmed) | Built-in quick calculator |
| 14 | Settings | 🟢 (feature confirmed) | Language, currency, security, help/support |
| 15 | Help & Support | 🟢 (feature confirmed) | In-app support/contact |

**To verify on install:** exact screen count, whether Add Transaction is a
full screen or a bottom sheet/modal, whether there's a search screen vs.
inline search, and whether customer & expense flows share one "Add" entry
point or are separate.

---

## 2. Feature List

### Confirmed 🟢
- Customer ledger (udhar/khata) management — give, receive, balance
- Daily expense tracking (business & personal, multiple categories implied)
- Business dashboard summary
- PDF export & sharing (WhatsApp, email, etc.)
- Local backup & restore
- Biometric/PIN app lock
- WhatsApp & SMS payment reminders
- Multi-language (5 languages)
- Multi-currency (3 currencies, expanding)
- Built-in calculator
- Fully offline, local-first storage — no cloud dependency
- Customer search

### Likely present but unconfirmed 🟡
- Edit/delete for transactions and customers
- Data export beyond PDF (e.g., CSV/Excel)
- Charts/graphs for spending trends (listing says "reports & insights" but
  doesn't specify visual charts)
- Dark mode
- Notification scheduling for reminders (vs. one-tap manual send)

---

## 3. Navigation Flow 🟡 (to verify)

Based on the feature set, the most likely top-level navigation is a
**bottom navigation bar** with 4–5 primary destinations, since the app has
multiple peer-level modules (ledger, expenses, reports, settings) rather
than one linear flow:

```
Splash
  │
  ▼
App Lock (if enabled) ──▶ Dashboard (Bottom Nav Home)
                              │
        ┌─────────────┬──────┼──────┬─────────────┐
        ▼             ▼             ▼             ▼
   Customers      Expenses      Reports       Settings
        │             │
        ▼             ▼
  Customer Detail  Add/Edit Expense
        │
        ▼
  Add Transaction (Give/Receive)
        │
        ▼
  PDF Export (from Customer Detail or Reports)
```

Secondary flows: **Calculator** and **Backup & Restore** are likely
accessed from Settings or a floating action button, since they're
utility features rather than primary destinations.

**Action for you:** open the app, sketch the *actual* navigation graph
(screen-by-screen, noting every tap target), and replace this diagram.

---

## 4. UI/UX Issues (Framework — fill in after hands-on testing)

Use this checklist while exploring the app; note concrete examples (screen
name + what's wrong) rather than general impressions.

| Area | Questions to answer while testing |
|---|---|
| **Onboarding friction** | Is language/currency setup required before any value is shown? Can a new shopkeeper add their first customer within 60 seconds? |
| **Data entry speed** | For a shopkeeper adding 20+ transactions a day, how many taps does "give Rs 500 udhar to Ahmed" take? Is there a shortcut from Dashboard? |
| **Visual hierarchy** | On the Customer Detail screen, is the running balance the most prominent element, or does it compete with other info? |
| **Empty states** | What does a brand-new install look like before any customer/expense is added? Is it helpful or blank? |
| **Error messaging** | What happens if you try to submit an empty form, or enter text in an amount field? |
| **Consistency** | Do "Add" buttons look/behave the same across Customers, Expenses, and other modules? |
| **Accessibility** | Text contrast on colored balance badges (green/red)? Tap target sizes? Does it work with system font-scaling turned up? |
| **Language switching** | Does the UI reflow correctly for Urdu/Arabic (RTL) vs. English (LTR)? This is a common bug source. |

_(Fill this section with your actual findings and screenshots once you've
installed the app — this table is deliberately left as a guided checklist,
not fabricated conclusions.)_

---

## 5. Performance Improvement Ideas (general, applicable regardless of findings)

1. **Paginate/lazy-load long lists** — customer lists and transaction
   history can grow large for an active shop; use `ListView.builder` with
   pagination or `sqflite` `LIMIT/OFFSET` queries instead of loading
   everything into memory at once.
2. **Debounce search input** — if search queries the database on every
   keystroke, debounce by ~300ms to avoid excessive rebuilds/queries.
3. **Index frequently-queried SQLite columns** — e.g., `customer_id`,
   `date`, `type` — to keep ledger and report queries fast as data grows.
4. **Avoid rebuilding the whole screen on every state change** — scope
   `Consumer`/`Selector` (if using Provider) tightly around the widgets
   that actually need to rebuild (e.g., just the balance figure, not the
   entire dashboard).
5. **Background PDF generation** — generating a PDF for a customer with
   years of history should not block the UI thread; use an isolate or
   `compute()`.
6. **Cache computed totals** — instead of recalculating SUM() on every
   dashboard render, consider maintaining a running balance updated
   incrementally on each transaction (with periodic reconciliation).
7. **Optimize app startup** — defer non-critical initialization (e.g.,
   analytics, non-visible feature setup) until after the first frame renders.

---

## 6. Feature Enhancement Suggestions

1. **Recurring expenses/reminders** — e.g., monthly rent, utility bills,
   auto-logged or reminded.
2. **Multiple business profiles** — useful for a shopkeeper who owns more
   than one shop.
3. **CSV/Excel export** alongside PDF, for accountants who need raw data.
4. **Charts for spending/income trends** (weekly/monthly bar or line
   charts) — the current listing only mentions text-based "reports."
5. **Role-based access** — allow an owner to give a staff member limited
   access (e.g., add-only, no delete) for shared devices.
6. **Cloud backup option (opt-in)** — currently 100% local, which is great
   for privacy but risky if the phone is lost/damaged with no backup taken.
7. **Bulk actions** — e.g., select multiple transactions to export or
   delete at once.
8. **Voice-to-text entry** for quick logging in noisy shop environments.
9. **Widget/quick-tile** for logging a transaction from the home screen
   without opening the full app.

---

## 7. Technical Architecture Proposal (for the capstone build)

This is the architecture the **capstone project** (built fresh, starting
today) will follow — inspired by general Flutter best practices, **not**
copied from HisabDo's implementation (which is closed-source anyway).

### Layered / feature-first structure

```
lib/
├── core/                     # Cross-cutting concerns, shared across features
│   ├── theme/                # Colors, typography, ThemeData
│   ├── routing/               # go_router configuration
│   ├── constants/             # App-wide constants
│   ├── widgets/                # Shared/reusable UI components
│   └── utils/                  # Formatters, validators, helpers
├── features/                  # One folder per business capability
│   ├── dashboard/
│   ├── customers/
│   ├── expenses/
│   ├── reports/
│   └── settings/
│       └── presentation/screens/, widgets/   (data/, domain/ added as needed)
└── main.dart
```

### Key decisions & rationale

| Decision | Rationale |
|---|---|
| **Feature-first folders** (not type-first `screens/`, `widgets/` at root) | Scales better over 60 days — each feature (customers, expenses, reports) grows independently without one giant shared folder |
| **`go_router` for navigation** | Declarative routing, deep-link support, and clean separation between navigation and UI — better suited to a multi-tab app than manual `Navigator.push` chains |
| **`provider` for state management (initially)** | Already familiar from Day 6–7; can be swapped for Riverpod/Bloc later per capstone milestones without changing the folder structure |
| **SQLite (`sqflite`) as the local database** | Matches HisabDo's "100% offline, local-first" model and prior day's experience; ledger apps need relational queries (joins between customers ↔ transactions) that SQLite handles naturally |
| **`core/` vs `features/` split** | Keeps theme, routing, and shared widgets from leaking business logic into shared code, and keeps each feature deletable/replaceable in isolation |
| **Presentation-first now, data/domain layers added incrementally** | Day 8 is about scaffolding; full clean-architecture layers (repository/data source separation) will be introduced once a real feature (e.g., Customers) needs persistence, rather than over-engineering empty folders today |

### Planned data model (subject to change as milestones progress)

```
Customer (id, name, phone, note, createdAt)
Transaction (id, customerId?, title, amount, type[given|received|expense|income], date, note)
```
A nullable `customerId` lets the same `transactions` table serve both
ledger entries (linked to a customer) and standalone expenses (not linked),
avoiding two near-duplicate tables early on.

---

## 📎 Next Steps

1. Install HisabDo from Google Play on a real device.
2. Walk through every screen listed above, correcting/expanding this document with real screenshots and notes.
3. Fill in Section 4 (UI/UX Issues) with actual findings.
4. Refine Section 3 (Navigation Flow) into an exact diagram.
5. Bring corrections to the Day 8 review session.
