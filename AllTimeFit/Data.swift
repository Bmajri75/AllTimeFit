//
//  Data.swift
//  AllTimeFit
//
//  Created by bechir Majri on 01/07/2020.
//  Copyright © 2020 bechir Majri. All rights reserved.
//
import Foundation

// Structure parametre page

struct Parametre {
    var horaireTravaildebut: String
    var horaireTravailfin: String
    var pause : Int
    var exterieur: Bool
    var interieur: Bool
    var valider: Bool
}


// Structure Exercice page

struct Exercice: Identifiable {
    var id = UUID()
    var title: String
    var imageName: String
    var objectif: String
    var description: String
    var ckalBurn: Int
    var trainingTime: Int
    var environement: Environement
    
}

// User View

struct User{
       var image = "profilAvatar"
       var totalEntreinement: Int
       var caloriesBruler: Int
       var nom: String
       var prenom: String
   }

//Enume des Environements

enum Environement {
    case interieur
    case exterieur
}


// instancie les exercices
var pompe = Exercice(title: "Pompes", imageName: "025-workout", objectif: "30 pompe", description: "poser vos main a plat, face contre sol, descender en comptent 4 seconde le torse sur le sol et remonter le plus rapidement possible", ckalBurn: 50,trainingTime: 1, environement: .interieur)

var abdo = Exercice(title: "Abdo", imageName: "030-sit up", objectif: "50 abdo", description: "allonger sur le dos, les pieds a plat, les genoux pliés, remonter la poitrine a vos genoux en gardant le dos droit, redescendre lentement",ckalBurn: 50,trainingTime: 1, environement: .interieur)

var squat = Exercice(title: "Squat", imageName: "012-workout", objectif: "50 squat", description: "position debout les pieds a plat, descendre lentement en regardant un point fixe haut, (ATTENTION garder le dos plat) les genoux se plie les fesses recule sans avancer les genoux",ckalBurn: 50,trainingTime: 1, environement: .interieur)

var sprint = Exercice(title: "Sprint", imageName: "exerciseSprint", objectif: "sprint 100M", description: "effectuer un sprint sur 100metre le plus rapidement possible",ckalBurn: 50,trainingTime: 1, environement: .exterieur)


var traction = Exercice(title: "Traction", imageName: "004-body_weight-1", objectif: "20Traction" , description: "Tenez-vous à la barre avec une prise un peu plus large que la largeur des épaules, Tirez sur vos bras et passez la barre sous votre menton (au niveau des clavicules) ; vous aurez naturellement tendance à tirer sur votre menton pour l’amener au-dessus de la barre mais ce sont vos bras qui doivent vous y amener, sinon vous allez « casser » l’alignement tête-dos-jambe",ckalBurn: 50,trainingTime: 1, environement: .exterieur)

var fente = Exercice(title: "Fentes" , imageName: "021-lunges", objectif: "50 fentes" , description: "Pour bien réaliser les fentes avant, procédez de la façon suivant : tenez-vous debout, les pieds dans la largeur de vos épaules. Vos appuis sont solides, et votre sangle abdominale est serrée tout au long de l’exercice ! De là, faites un grand pas en avant et fléchissez votre jambe arrière jusqu’à ce que votre genou touche (presque) le sol. Vos jambes forment chacune un angle droit, et vos cuisses sont parallèles au sol. Puis revenez en position de départ en ramenant la jambe arrière.",ckalBurn: 50,trainingTime: 1, environement: .interieur)

var mountainClimbers = Exercice(title: "Mountain Climbers", imageName: "022-workout", objectif: "1 Minute ", description: "Départ Position pompe Fléchissez une jambe tout en gardant l’autre bien tendue, toujours en appui sur vos pointes de pieds. L’exercice consiste alors à ramener rapidement et alternativement les genoux gauche et droit vers l’avant. Pour vous donner une image, c’est comme si vous preniez le départ d’une course dans des starting block, en courant sur place",ckalBurn: 50,trainingTime: 1, environement: .interieur)

var gluteBridge = Exercice(title: "Glute Bridge" , imageName: "010-workout", objectif: "1min", description: "Allongez sur le dos, les bras parallèlement au corps. Fléchissez vos genoux et posez vos pieds au sol de sorte qu’il reste un petit écart entre les talons et les fesses. Puis, levez vos hanches, de sorte que les pieds, les bras, les épaules et la tête restent cloués au sol.",ckalBurn: 50,trainingTime: 1, environement: .interieur)


// Array des instance Exercices
var listeExercice = [pompe, abdo, squat, sprint, traction, fente, mountainClimbers, gluteBridge]



// filtre interieur exercices vas chercher liste Exercices et filtre ou l'environement est strictement egalement a interieur
var interieurExercices = listeExercice.filter{$0.environement == .interieur}


// filtre exterieur exercices vas chercher liste Exercices et filtre ou l'environement est strictement egalement a exterieu
//$0 correspond a l'element du array que on filtre
var exterieurExercices = listeExercice.filter{$0.environement == .exterieur}

var utilisateur1 = User(image: "profilAvatar", totalEntreinement: 0, caloriesBruler: 0, nom: "wahib", prenom: "Zachari")
