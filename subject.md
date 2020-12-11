# Introduction

L'idée de l'exercice est de valider tes acquis, de voir si tu peux t'adapter rapidement à une nouvelle problématique dans un temps relativement court et enfin de tester tes compétences en conception/architecture.

# Mission

Ici, on souhaitera développer une API Restful JSON dans le langage de ton choix (Python, PHP, Ruby par exemple) autour de Fibonacci.

* L'API doit permettre à l'utilisateur via une route de saisir un entier n en entrée pour obtenir en sortie le nième nombre k de Fibonacci
* L'API doit aussi permettre à l'utilisateur via une autre route de saisir un entier k en entrée pour obtenir le nombre n en entrée le plus proche tel que k = fib(n)
* Mettre en cache les résultats pour être capable de réutiliser des résultats précédemment demandés à l'API (par exemple si je demande fib(15) dans une première requête que je demande ensuite fib(20) dans une seconde requête).

# Points principaux

* Un journal de bord en anglais devra être fourni permettant d’expliquer l'architecture, les étapes de réflexions et les pistes d'améliorations pour que l'API puisse être utilisée dans un contexte de production
* Des modèles/services bien clairs (single responsability)
* Un petit formulaire HTML/JS à côté de l'API pour pouvoir l'utiliser facilement
* Repo git sur github
* Un fichier README contenant les instructions pour utiliser l'API et le formulaire

# Points bonus

* Fournir une image docker pour l'API afin de lancer l'API plus proprement