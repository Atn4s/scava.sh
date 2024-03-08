#!/bin/bash

cat $HOME/.cache/wal/colors.css > cores

# Nome do arquivo de entrada (cópia das cores atuais do Pywal)
input_file="cores"

# Nome do arquivo de saída que serão utilizadas no Cava 
output_file="config"

# Verifica se o arquivo de entrada existe
if [ -e "$input_file" ]; then
  # Cria o arquivo de saída e adiciona o cabeçalho
  echo "[color]" > "$output_file"
  echo "gradient = 1" >> "$output_file"

  # Extrai as cores do arquivo de entrada
  colors=($(awk '/--color[0-9]+:/ {print $2}' "$input_file"))

  # Limita o número de cores a 8, se houver mais
  num_colors=${#colors[@]}
  if [ "$num_colors" -gt 8 ]; then
    num_colors=8
  fi

  # Define o número de gradientes e gradient_color_X para as primeiras 8 cores
  echo "gradient_count = $num_colors" >> "$output_file"
  for ((i = 0; i < num_colors; i++)); do
    color="${colors[i]%;}"  # Remove o ponto e vírgula, se existir
    echo "gradient_color_$((i+1)) = '$color'" >> "$output_file"
  done

  echo "Conversão concluída. O resultado foi salvo em '$output_file'."
  echo "O arquivo cores foi apagado!"
  rm "$input_file"
else
  echo "Arquivo de entrada '$input_file' não encontrado."
fi

# move as configurações atuais para a pasta Cava
mv config $HOME/.config/cava/
killall -SIGUSR1 cava

