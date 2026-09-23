echo "Write your name:"
read name
echo "Write your age:"
read age
year=$(date +%Y)
echo "Hello, $name! you was born in $((year - age))."