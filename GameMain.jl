#=
    ***WELCOME TO THE GAME OF ROCK-PAPER-SCISSORS***
=#

include("GameFunctions.jl");

# A quick game guide:
print(
    "Rules in winning the game are:\n"
    * "Rock vs Paper -> Paper wins because it covers Rock\n"
    * "Paper vs Scissors -> Scissors wins because it cuts Paper\n"
    * "Scissors vs Rock -> Rock wins because it smashes Scissors\n"
)

while true
    try
        get_player_actions()    # Function to get user and computer selection...
        winner_determination()  # Function to determine who won or lost...
    catch
        @warn "You entered an invalid option, Kindly try again..."
        continue # Get back to game logic...
    end

    print("\nDo you want to play again?\n"
    * "Press (y for Yes) or (n for No)\n"
    * "Enter choice: ")
    user_choice = readline()

    if user_choice != "y" && uppercase(user_choice) != "Y"  # Exit game if user select No(n)...
        break
    end

end
