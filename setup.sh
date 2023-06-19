# pull newest files
git pull

# * variables:
file_extension=".md"
plans_dir_path="./plans" # plan files directory path
template_path="./template.md"

# * constants:
current_date=$(date '+%Y-%m-%d') # put current date as yyyy-mm-dd HH:MM:SS in $current_date 
file_name="${current_date}${file_extension}"
file_path="${plans_dir_path}/${file_name}"

# * main script:

if [ ! -d $plans_dir_path ] 
then
    # directory doesn't exist, so create it

    mkdir $plans_dir_path
fi

if [ ! -f $file_path ]
then
    # file doesn't exist, so create it

    file_creation_message="setup.sh: Plan file ${file_name} has been created"

    echo "${file_creation_message}"

    cd $plans_dir_path

    # create a new file
    touch $file_name

    # copy template and paste in the new file
    cp  "../${template_path}" $file_name

    cd ../

    git add .
    git commit -m "${file_creation_message}"

    git push -u origin main
fi

# * open the file with your code editor:
code ./
code $file_path