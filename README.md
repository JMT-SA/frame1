## JMT Framework update

This project is a working base for the new framework - to experiment and examine approaches.
It may be discarded and replaced at any time.

Plans:

Technology    | Implementation
------------- | ---------------
Ruby version  | 2.3.0
Rails version | 5
ActiveRecord  | Sequel
Database      | Postgresql (9.5)
Grid          | [ag-grid](https://www.ag-grid.com/)
Dataminer     | New gem
Authentication| Basic (has_secure_password)
Authorization | Custom (based on rules in existing system)
Navigation    | 3-level menu (responsive)
UI Portal     | Without using iframes

Thoughts:

* Env vars for settings
* Build in concept of live and test versions - test version must always stand out in UI.
* Scaled down solution for MVVM-type interactions in UI. Declarative modes of getting e.g. items summed up to totals.
* Implement current_user
* Remove sequel-rails; use only activemodel POROs... deal in arrays and hashes; model properties?
* Sessions - Configurable - for internet, should expire on browser close, for intranet not.
* Store timer in local storage of browser - warn on all tabs about session expiry in a notification (5 mins before and countdown).
* Repository pattern for data.

Questions

* Do we want sessions to expire?
* Should a user remain logged-in if they close the browser without logging out?

