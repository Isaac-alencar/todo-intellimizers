# README

# How to run?
In your terminal you can run `docker-compose up` which will build a container to you application and
your database (postgresql).

Then in other terminal window you need to run `./scripts/run ./bin/rails tailwindcss:watch`

Open other terminal (it is boring I know) `./scripts/run ./bin/setup` to reload your application
After that, you need just to keep a window to you container and other to run commands using the prefix
`./scripts/run {regular_command_rails}`