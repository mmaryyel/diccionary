def diccionary_sort
  palabras = []
  while true
    puts "Escribe una palabra:"
    palabra = gets.chomp
    if palabra.match(/^[a-zA-Z_áéíóúñ\s]*$/) == nil || palabra == "" 
      break 
    else
      palabras << palabra
    end
  end
  puts "Felicidades! tu diccionario tiene #{palabras.count} palabras:"
  puts palabras.sort_by{|word| word.downcase}
end

diccionary_sort