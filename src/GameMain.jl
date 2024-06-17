#=
    ***WELCOME TO THE GAME OF ROCK-PAPER-SCISSORS***
=#

begin   # To automatically run the Game logic. . .
    include("GameFunctions.jl") # Import GameFunctions.jl to GameMain.jl

    while true
        println("W E L C O M E\n")
        # A quick game guide:
        print(
            "Rules in winning the game are:\n"
            * "Rock vs Paper -> Paper wins because it covers Rock\n"
            * "Paper vs Scissors -> Scissors wins because it cuts Paper\n"
            * "Scissors vs Rock -> Rock wins because it smashes Scissors\n"
        )

        try
            player_action = get_players_action()    # Function to get user and computer selection...
            winner_determination(player_action)  # Function to determine who won or lost...
        catch e
            @warn "An error occurred: $(e). Kindly try again..."
            continue # Get back to game logic...
        end

        print("\nDo you want to play again?\n"
        * """Press (y for Yes) or (n for No, or press "Enter" to Exit)\n"""
        * "Enter choice: ")
        user_choice = readline()

        if user_choice != "y" && uppercase(user_choice) != "Y"  # Exit game if user select No(n)...
            break
        end

    end

end