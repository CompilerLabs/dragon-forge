all:
	# build embeded text files
	xxd -i ./source/dragon-forge/standard/print.df > ./build_temps/dragon-forge-print.c
	xxd -i ./source/dragon-forge/standard/cast.df > ./build_temps/dragon-forge-cast.c
	xxd -i ./source/dragon-forge/standard/buffer.df > ./build_temps/dragon-forge-buffer.c
	xxd -i ./source/dragon-forge/standard/current.df > ./build_temps/dragon-forge-current.c
	xxd -i ./source/dragon-forge/standard/list.df > ./build_temps/dragon-forge-list.c
	xxd -i ./source/dragon-forge/standard/context.df > ./build_temps/dragon-forge-context.c
	xxd -i ./source/dragon-forge/standard/check.df > ./build_temps/dragon-forge-check.c
	xxd -i ./source/dragon-forge/standard/error.df > ./build_temps/dragon-forge-error.c
	xxd -i ./source/dragon-forge/standard/json.df > ./build_temps/dragon-forge-json.c
	xxd -i ./source/dragon-forge/standard/time.df > ./build_temps/dragon-forge-time.c
	xxd -i ./source/dragon-forge/standard/anvil.df > ./build_temps/dragon-forge-anvil.c
	xxd -i ./source/dragon-forge/standard/compile.df > ./build_temps/dragon-forge-compile.c
	xxd -i ./source/dragon-forge/standard/just_run.df > ./build_temps/dragon-forge-just_run.c

	# compile executables
	gcc ./source/main.c -Wall -Wextra -fsanitize=address -g -o ./../dragon-forge-debug.elf
	gcc ./source/main.c -o ./../dragon-forge.elf
