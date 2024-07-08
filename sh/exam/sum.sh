read -p "Enter a number : " a

function sum() {
  local number=$1
  local sum=0
  for digit in $(echo $number | fold -w2); do
    sum=$((sum+digit))
  done
  echo "sum is : $sum"
}

sum $a