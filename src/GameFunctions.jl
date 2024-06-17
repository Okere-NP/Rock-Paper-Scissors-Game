function get_players_action()
    print("\n"
    * "Press 1 to select Rock\n"
    * "Press 2 to select Paper\n"
    * "Press 3 to select Scissors\n"
    * "Enter option: "); user_input = parse(Int, readline())

    # Ensure valid input
    while user_input < 1 || user_input > 3
        println("\nInvalid option. Please select 1, 2, or 3.")
        print("Enter option: ")
        user_input = parse(Int, readline())
    end

    game_option = ("Rock", "Paper", "Scissors")
    user_option = game_option[user_input]
    computer_option = rand(game_option)

    return (game_option, user_option, computer_option)
end

function winner_determination(actions)
    game_option, user_option, computer_option = actions

    print("\nYou selected $(user_option) and Computer selected $(computer_option)\n")
    if user_option == computer_option
        println("You both selected $(user_option),\n"
        * "it's a tie!")

    elseif user_option == game_option[1]    # User selected ROCK...
        if computer_option == game_option[2]    # Computer selected PAPER...
            println("$(game_option[2]) covers $(game_option[1]),\n"
            * "Computer won and You lost...")
        else
            computer_option == game_option[3]
            println("$(game_option[1]) smashes $(game_option[3]),\n"
            * "You won and Computer lost...")
        end

    elseif user_option == game_option[2]    # User selected PAPER...
        if computer_option == game_option[3]    # Computer selected SCISSORS...
            println("$(game_option[3]) cuts $(game_option[2]),\n"
            * "Computer won and You lost...")
        else
            computer_option == game_option[1]   # Computer selected ROCK...
            println("$(game_option[2]) covers $(game_option[1]),\n"
            * "You won and Computer lost...")
        end

    elseif user_option == game_option[3]    # User selected SCISSORS...
        if computer_option == game_option[1]    # Computer selected ROCK...
            println("$(game_option[1]) smashes $(game_option[3]),\n"
            * "Computer won and You lost...")
        else
            computer_option == game_option[2]   # Computer selected PAPER...
            println("$(game_option[3]) cuts $(game_option[2]),\n"
            * "You won and Computer lost...")
        end

    end

end