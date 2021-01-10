function fish_prompt
   echo -n [(whoami)'@'(hostname)':' (string replace -r "$HOME" "~" "$PWD")]'$ '
end