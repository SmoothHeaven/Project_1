#!/usr/bin/bash
sub () {
    

    #check for 2 args if not, ask for the args
    if [ $# -eq 2 ]; then

        local topic_name="$1"
        local file_name="$2"
    else
        # Ask for the topic_name
        read -p "Type the topic_name: " topic_name

        # Ask for the file_name.csv
        read -p "Type the file_name.csv: " file_name
    fi

    
    ros2 topic echo $topic_name --no-arr >> $file_name.csv
    echo "Data wrote to $file_name.csv"
}

