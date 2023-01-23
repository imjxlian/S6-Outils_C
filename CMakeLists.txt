cmake_minimum_required(VERSION 2.8)

#Nom du projet
project(Outils_C)


#Repertoires
include_directories(include)

#On crÃ©e une bibliothÃ¨que qui contient les fonctions dÃ©finies dans matrix.c et vector.c
add_library(mat SHARED src/matrix.c src/vector.c)

add_executable(prog src/prog.c)
#l'exÃ©cutable sera liÃ© Ã  certaines bibliothÃ¨ques:
target_link_libraries(prog m mat)