# Scava.sh script to follow the pywal theme for cava!

# A ideia do script: 
Através de uma cópia do tema feiito pelo pywal em <i> .cache/wal/colors.css </i> é feito uma cópia temporaria em um arquivo chamado 
cores, que irá formatar todo o código do .css para o padrão reconhecido pelas configurações do cava e ser salvo no formato config. 
Por fim o arquivo config gerado será movido para <i> .config/cava/config </i> e remover o arquivo temporario cores.

# Como executo?
Baixe o arquivo shcava.sh e execute através de <i> bash shcava.sh </i> <br>
Se preferir você pode adicionar um alias como <i> bash {local_do_script}/shcava.sh </i> para facilitar e concatenar com o pywal como no exemplo:
<i> wal -i wallpaper_example && scava

<b> Observação: aperte r no cava para aplicar o tema! </b>
