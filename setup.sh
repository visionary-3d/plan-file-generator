# pull newest files
git pull

# creating a few variables

file_extension=".md"

# put current date as yyyy-mm-dd HH:MM:SS in $current_date 
current_date=$(date '+%Y-%m-%d')

file_name="${current_date}${file_extension}"

if [ ! -f "./${file_name}" ]
then
    # File doesn't exist 

    file_creation_message="GENERATOR :: file '${file_name}' has been created"

    echo "${file_creation_message}"

    touch $file_name

    git add .
    git commit -m "${file_creation_message}"

    git push -u origin main
fi

code "./${file_name}"