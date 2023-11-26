set dotenv-load

default: init

# lists available tasks
@list:
    just --list

# init project
init:
    # mix something?

# start the server
dev:
    watchexec -e ex,exs just test

# open the project in the browser
# open:
#     open "$PROJECT_URL" -a "Google Chrome Canary"

# start a console
console:
    iex -S mix

# run tests
test:
    mix test

# Open the DB
db:
    pgcli $DATABASE_URL
