import UIKit

struct Post {
    let title: String
    let author: String
    let description: String
    let image: String
    let likes: Int
    let views: Int


   static func postView () -> [[Post]]{
    //    var postItem = [Post]()
        var postComposition = [[Post]]()
       postComposition.append([Post(title: "", author: "", description: "", image: "PicProfile", likes: 0, views: 0)])
        
       postComposition.append([Post(title: "Early life (1452–1472)",
                             author: "Birth and background",
                             description: "Very little is known about Leonardo's childhood and much is shrouded in myth, partially because of his biography in the frequently apocryphal Lives of the Most Excellent Painters, Sculptors, and Architects (1550) by the 16th-century art historian Giorgio Vasari.[27][28] Tax records indicate that by at least 1457 he lived in the household of his paternal grandfather, Antonio da Vinci,[10] but it is possible that he spent the years before then in the care of his mother in Vinci, either Anchiano or Campo Zeppi in the parish of San Pantaleone.[29][30] He is thought to have been close to his uncle, Francesco da Vinci,[3] but his father was probably in Florence most of the time.[10]",
                             image: "1920px-Leonardo_da_Vinci_-_Plan_of_Imola_-_Google_Art_Project",
                            likes: 2,
                            views: 10)])
       
       postComposition.append([Post(title: "Verrocchio's workshop",
                            author: "Wikipedia",
                            description: "In the mid-1460s, Leonardo's family moved to Florence, which at the time was the centre of Christian Humanist thought and culture.[33] Around the age of 14,[25] he became a garzone (studio boy) in the workshop of Andrea del Verrocchio, who was the leading Florentine painter and sculptor of his time.[33] This was about the time of the death of Verrocchio's master, the great sculptor Donatello.[i] Leonardo became an apprentice by the age of 17 and remained in training for seven years.[35] Other famous painters apprenticed in the workshop or associated with it include Ghirlandaio, Perugino, Botticelli, and Lorenzo di Credi.[36][37] Leonardo was exposed to both theoretical training and a wide range of technical skills,[38] including drafting, chemistry, metallurgy, metal working, plaster casting, leather working, mechanics, and woodwork, as well as the artistic skills of drawing, painting, sculpting, and modelling.[39][j]",
                            image: "1024px-Leonardo_da_vinci_-_La_scapigliata",
                           likes: 20,
                           views: 231)])
       
       postComposition.append([Post(title: "First Florentine period (1472–c. 1482)",
                            author: "Wikipedia",
                                    description: "By 1472, at the age of 20, Leonardo qualified as a master in the Guild of Saint Luke, the guild of artists and doctors of medicine,[k] but even after his father set him up in his own workshop, his attachment to Verrocchio was such that he continued to collaborate and live with him.[36][44] Leonardo's earliest known dated work is a 1473 pen-and-ink drawing of the Arno valley.[37][45][l] According to Vasari, the young Leonardo was the first to suggest making the Arno river a navigable channel between Florence and Pisa",
                            image: "1280px-Da_Vinci_Vitruve_Luc_Viatour_(cropped)",
                           likes: 33,
                           views: 224)])
       
       postComposition.append([Post(title: "First Milanese period (c. 1482–1499)",
                            author: "Wikipedia",
                                    description: "Leonardo worked in Milan from 1482 until 1499. He was commissioned to paint the Virgin of the Rocks for the Confraternity of the Immaculate Conception and The Last Supper for the monastery of Santa Maria delle Grazie.[51] In the spring of 1485, Leonardo travelled to Hungary on behalf of Sforza to meet king Matthias Corvinus, and was commissioned by him to paint a Madonna.[52]",
                            image: "Leonardo_da_Vinci_(attrib)-_la_Belle_Ferroniere",
                           likes: 21,
                           views: 120)])
       
       
        return postComposition
    }
}
