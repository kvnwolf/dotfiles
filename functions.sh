Prompt () {
  echo ""
  echo "❓ $1"
  select yn in "Yes" "No"; do
    case $yn in
      Yes ) echo ""; break;;
      No ) exit;;
    esac
  done
}
