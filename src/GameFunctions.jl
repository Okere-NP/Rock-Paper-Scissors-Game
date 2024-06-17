function get_players_action()
    print("\n"
    * "Press 1 to select Rock\n"
    * "Press 2 to select Paper\n"
    * "Press 3 to select Scissors\n"
    * "Enter option: "); user_input = parse(Int, readline())

    game_option = ("Rock", "Paper", "Scissors")
    user_option = game_option[user_input]
    computer_option = rand(game_option)

    return (game_option, user_option, computer_option)
end

function winner_determination(actions)
    #=
        go = game_option
        uo = user_option
        co = computer_option
        actions = (game_option, user_option, computer_option)
    =#  go, uo, co = actions

    print("\nYou selected $(uo) and Computer selected $(co)\n")
    if uo == co
        println("You both selected $(uo),\n"
        * "it's a tie!")

    elseif uo == go[1]    # User selected ROCK...
        if co == go[2]    # Computer selected PAPER...
            println("$(go[2]) covers $(go[1]),\n"
            * "Computer won and You lost...")
        else
            co == go[3]
            println("$(go[1]) smashes $(go[3]),\n"
            * "You won and Computer lost...")
        end

    elseif uo == go[2]    # User selected PAPER...
        if co == go[3]    # Computer selected SCISSORS...
            println("$(go[3]) cuts $(go[2]),\n"
            * "Computer won and You lost...")
        else
            co == go[1]   # Computer selected ROCK...
            println("$(go[2]) covers $(go[1]),\n"
            * "You won and Computer lost...")
        end

    elseif uo == go[3]    # User selected SCISSORS...
        if co == go[1]    # Computer selected ROCK...
            println("$(go[1]) smashes $(go[3]),\n"
            * "Computer won and You lost...")
        else
            co == go[2]   # Computer selected PAPER...
            println("$(go[3]) cuts $(go[2]),\n"
            * "You won and Computer lost...")
        end

    end

end