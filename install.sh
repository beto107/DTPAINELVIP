#!/bin/bash
git clone https://github.com/beto107/DTPAINELVIP.git
banner(){
cat <<FECHA
 
'####:'##::: ##::'######::'########::::'###::::'##:::::::'##:::::::
. ##:: ###:: ##:'##... ##:... ##..::::'## ##::: ##::::::: ##:::::::
: ##:: ####: ##: ##:::..::::: ##:::::'##:. ##:: ##::::::: ##:::::::
: ##:: ## ## ##:. ######::::: ##::::'##:::. ##: ##::::::: ##:::::::
: ##:: ##. ####::..... ##:::: ##:::: #########: ##::::::: ##:::::::
: ##:: ##:. ###:'##::: ##:::: ##:::: ##.... ##: ##::::::: ##:::::::
'####: ##::. ##:. ######::::: ##:::: ##:::: ##: ########: ########:
....::..::::..:::......::::::..:::::..:::::..::........::........::                                                                                                                   
                                                   BY @BETOVIP

FECHA

}
escolha(){
  echo "ESCOLHA O QUE DESEJA FAZER: "
  read -p "  ▍" leitor
  [[ $leitor == 1 ]] && dtmod
  [[ $leitor == 0 ]] && cat /dev/null > ~/.bash_history && history -c && rm -rf install* > /dev/null 2>&1 && rm -rf wget-log* > /dev/null 2>&1 && clear && exit 0
  [[ $leitor == * ]] && main_menu  
  
}
main_menu(){ 
clear
banner
printf """
 ===============================
 | 1 ) PAINEL DTUNNEL MOD      | 
 ===============================
 | 0 ) SAIR                    |
 ===============================\n
 """
escolha
 }
dtmod(){
if [[ $(uname -m) == "aarch64" ]]; then
echo ""
echo -e "\n\033[1;31mSISTEMA (aarch64) INCOMPATÍVEL!\033[0m"
rm -rf install* > /dev/null 2>&1
cat /dev/null > ~/.bash_history && history -c
rm -rf wget-log* > /dev/null 2>&1
sleep 3
exit 0
else
rm -rf install* > /dev/null 2>&1
wget https://github.com/beto107/DTPAINELVIP/raw/main/installorig.sh > /dev/null 2>&1 && chmod +x installorig.sh && ./installorig.sh
cat /dev/null > ~/.bash_history && history -c
rm -rf wget-log* > /dev/null 2>&1
sleep 3
exit 0
fi
} 
main_menu