#! /bin/bash
# Script name: cars.sh
# Author: Rhys Lindhorst

my_file="my_old_cars"
touch "$my_file"

while true; do
    echo "Please choose an option:"
    echo "1 - Enter a new car"
    echo "2 - Display the list of cars"
    echo "3 - Quit"

    # Read choice with -r to prevent backslash issues
    if ! read -r choice; then
        echo "EOF reached. Exiting."
        break
    fi

    case $choice in
        1)
            if ! read -r year; then break; fi
            if ! read -r make; then break; fi
            if ! read -r model; then break; fi
            echo "${year}:${make}:${model}" >> "$my_file"
            ;;
        2)
            if [[ -s $my_file ]]; then
                echo "Cars list (sorted by year):"
                sort -t: -k1,1 "$my_file"
            else
                echo "No cars entered yet."
            fi
            ;;
        3)
            echo "Goodbye!"
            break
            ;;
        *)
            echo "Invalid choice, please enter 1, 2, or 3."
            ;;
    esac
done
