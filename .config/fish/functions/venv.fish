function venv
    if test -f .venv/bin/activate.fish
        source .venv/bin/activate.fish
    else
        echo "Coudn't find file `activate.fish`"
    end
end
