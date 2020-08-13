//
//  ContentViewController.swift
//  inmotion_Juliana
//
//  Created by Juliana Pereira Machado on 02/08/20.
//  Copyright © 2020 Juliana Pereira Machado. All rights reserved.
//

import UIKit
import ViewAnimator

var lbl_Title = UILabel()
var lbl_Text = UILabel()
var lbl_Subtitle = UILabel()
var imageView = UIImageView()
var lbl_SecondText = UILabel()
var lbl_Source = UILabel()
var lbl_TitleRef = UILabel()

let scrollView = DScrollView()
var scrollViewContainer = DScrollViewContainer(axis: .vertical, spacing: 0)
var scrollViewTitle = DScrollViewElement(height: 60, backgroundColor: .clear)
var scrollViewImage = DScrollViewElement(height: 250, backgroundColor: .clear)
var scrollViewText = DScrollViewElement(height: 160, backgroundColor: .clear)
var scrollViewSubtitle = DScrollViewElement(height: 40, backgroundColor: .clear)
var scrollViewSecondText = DScrollViewElement(height: 200, backgroundColor: .clear)
var scrollViewTitleRef = DScrollViewElement(height: 20, backgroundColor: .clear)
var scrollViewSource = DScrollViewElement(height: 110, backgroundColor: .clear)

//MARK: HIDDEN CODE
//Para esconder uma parte do código, basta pressionar command e clicar sobre a classe, depois selecionar FOLD
//Para mostrar, basta segurar command e dar dois cliques nos 3 pontos

class ContentViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .some(#colorLiteral(red: 1, green: 0.9610419869, blue: 0.939756453, alpha: 1))
        
        //        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        //        myView.center = view.center
        //        view.addSubview(myView)
        //        myView.backgroundColor = .some(#colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1))
        //
        //        myView.animate(.background(color: .blue), .fadeIn, .delay(2))
    }
}


//MARK: INTRODUCTION
class IntroductionVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        view.backgroundColor = .some(#colorLiteral(red: 1, green: 0.9610419869, blue: 0.939756453, alpha: 1))
        
        clearSections()
        
        scrollViewTitle = DScrollViewElement(height: 60)
        scrollViewImage = DScrollViewElement(height: 250)
        scrollViewText = DScrollViewElement(height: 190)
        scrollViewSubtitle = DScrollViewElement(height: 40)
        scrollViewSecondText = DScrollViewElement(height: 200)
        scrollViewTitleRef = DScrollViewElement(height: 20)
        scrollViewSource = DScrollViewElement(height: 130)
        
        view.addScrollView(scrollView,
                           withSafeArea: .all,
                           hasStatusBarCover: true,
                           statusBarBackgroundColor: .white,
                           container: scrollViewContainer,
                           elements: [scrollViewTitle,
                                      scrollViewImage,
                                      scrollViewText,
                                      scrollViewSubtitle,
                                      scrollViewSecondText,
                                      scrollViewTitleRef,
                                      scrollViewSource])
        
        setElements()
        
        //configuração label de título
        lbl_Title.text = "O que é Motion Design?"
        scrollViewTitle.addSubview(lbl_Title)
        lbl_Title.edgeTo(scrollViewTitle)
        
        //configuração imagem
        imageView.image = UIImage(named: "question")
        scrollViewImage.addSubview(imageView)
        imageView.edgeTo(scrollViewImage)
        
        //configuração texto
        lbl_Text.text = "Também conhecido como UX Motion Design, é uma linguagem usada pelos designers para se comunicarem com os usuários. Através do uso de animação e efeitos visuais, ele é muito usado para descrever relações espaciais entre estados e a funcionalidade de elementos individuais.\n\n"
        scrollViewText.addSubview(lbl_Text)
        lbl_Text.edgeTo(scrollViewText)
        
        //configuração subtítulo
        lbl_Subtitle.text = "A importância do motion design no UX/UI"
        scrollViewSubtitle.addSubview(lbl_Subtitle)
        lbl_Subtitle.edgeTo(scrollViewSubtitle)
        
        //configuração texto 2
        lbl_SecondText.text = "Um app conta uma história e suas ações são guiadas por movimentos, através de transições, botões, feedbacks, entre outros. Além de contribuir com isso, o motion design deixa a interface mais fluída, influenciando totalmente na experiência do usuário (UX).\n\n"
        scrollViewSecondText.addSubview(lbl_SecondText)
        lbl_SecondText.edgeTo(scrollViewSecondText)
        
        //configuração referência título
        lbl_TitleRef.text = "Referências"
        scrollViewTitleRef.addSubview(lbl_TitleRef)
        lbl_TitleRef.edgeTo(scrollViewTitleRef)
        
        //configuração referência texto
        lbl_Source.text = "What is Motion Design? - SEGD \nMotion in UX Design - UX Planet por Nick Babich \nUX Motion Design, UI Animation, Web Motion… Qual o Correto? - UX Motion Design por Felippe Silveira \nO Motion Design é o futuro do UI - Layer Lemonade por Maurélio Toscano\nIlustração - Stories by Freepik"
        scrollViewSource.addSubview(lbl_Source)
        lbl_Source.edgeTo(scrollViewSource)
        
    }
}

//MARK: APPLICATION MOTION
class CategoriesMotionDesignVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .some(#colorLiteral(red: 1, green: 0.9610419869, blue: 0.939756453, alpha: 1))
        
        clearSections()
        
        scrollViewTitle = DScrollViewElement(height: 60)
        scrollViewImage = DScrollViewElement(height: 250)
        scrollViewText = DScrollViewElement(height: 600)
        scrollViewTitleRef = DScrollViewElement(height: 20)
        scrollViewSource = DScrollViewElement(height: 60)
        
        view.addScrollView(scrollView,
                           withSafeArea: .all,
                           hasStatusBarCover: true,
                           statusBarBackgroundColor: .white,
                           container: scrollViewContainer,
                           elements: [scrollViewTitle,
                                      scrollViewImage,
                                      scrollViewText,
                                      scrollViewTitleRef,
                                      scrollViewSource])
        
        setElements()
        
        lbl_Title.text = "Categorias do Motion Design"
        scrollViewTitle.addSubview(lbl_Title)
        lbl_Title.edgeTo(scrollViewTitle)
        
        imageView.image = UIImage(named: "application")
        scrollViewImage.addSubview(imageView)
        imageView.edgeTo(scrollViewImage)
        
        lbl_Text.text = "O motion design em UX se divide em 3 categorias, de acordo com suas funções:\n\nMaterial - orienta o usuário no espaço digital, de onde vem e para onde vai. Estabelece o “mundo” do app e é como um mapa para o usuário, definindo relações espaciais entre telas/elementos e reforçando a arquitetura da informação.\n\nFuncional - fortalece os princípios básicos de UX, como hierarquia, usabilidade, feedback e confiança. Direciona a atenção dos usuários de acordo com a hierarquia, otimiza a experiência (fazendo parecer mais rápida e leve), fornece feedback quando acões são realizadas e prepara o usuário para próximas etapas.\n\nDelightful (“Agradável”) - reforça a personalidade da marca e é implementado quando o material e o funcional estão estabelecidos. Torna a interface mais agradável, adicionando humanidade e diversão.\n\n"
        
        scrollViewText.addSubview(lbl_Text)
        lbl_Text.edgeTo(scrollViewText)
        
        lbl_TitleRef.text = "Referências"
        scrollViewTitleRef.addSubview(lbl_TitleRef)
        lbl_TitleRef.edgeTo(scrollViewTitleRef)
        
        lbl_Source.text = "Motion Design: An Intro to UX Choreography - User Experience Magazine por Alik Brundett\nIlustração - Stories by Freepik"
        scrollViewSource.addSubview(lbl_Source)
        lbl_Source.edgeTo(scrollViewSource)
    }
}

//MARK: BEST PRACTICES
class BestPracticesVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .some(#colorLiteral(red: 1, green: 0.9610419869, blue: 0.939756453, alpha: 1))
        
        clearSections()
        
        scrollViewTitle = DScrollViewElement(height: 60)
        scrollViewImage = DScrollViewElement(height: 250)
        scrollViewText = DScrollViewElement(height: 670)
        scrollViewSubtitle = DScrollViewElement(height: 80)
        scrollViewSecondText = DScrollViewElement(height: 630)
        scrollViewTitleRef = DScrollViewElement(height: 20)
        scrollViewSource = DScrollViewElement(height: 80)
        
        view.addScrollView(scrollView,
                           withSafeArea: .all,
                           hasStatusBarCover: true,
                           statusBarBackgroundColor: .white,
                           container: scrollViewContainer,
                           elements: [scrollViewTitle,
                                      scrollViewImage,
                                      scrollViewText,
                                      scrollViewSubtitle,
                                      scrollViewSecondText,
                                      scrollViewTitleRef,
                                      scrollViewSource])
        
        setElements()
        
        lbl_Title.text = "Boas práticas e acessibilidade"
        scrollViewTitle.addSubview(lbl_Title)
        lbl_Title.edgeTo(scrollViewTitle)
        
        imageView.image = UIImage(named: "ok")
        scrollViewImage.addSubview(imageView)
        imageView.edgeTo(scrollViewImage)
        
        lbl_Text.text = "Quando a acessibilidade no motion design é colocada em questão, deve-se levar em conta que há vários tipos de usuários e o que para alguns é simples, para outros pode ser desafiador. Dentre os fatores que mais se destacam estão:\n\nO uso de leitores de tela, pois o motion design e algumas microinterações podem fazer com que as informações sejam lidas fora de ordem, não sejam lidas ou comprometa o processamento do sistema;\n\nPessoas com distúrbios vestibulares, ou seja, que sofrem com alguns problemas no ouvido interno e no cérebro (como tontura, vertigem, alteração do equilíbrio corporal, entre outros) podem ter experiências nauseantes e/ou desorientadoras com o movimento;\n\nMovimentos muito drásticos podem confundir e frustrar o usuário;\n\nPara o usuário que utiliza o zoom, dependendo do tamanho da tela ou do processamento, algumas notificações ou elementos animados podem acabar fora de visualização.\n\n"
        scrollViewText.addSubview(lbl_Text)
        lbl_Text.edgeTo(scrollViewText)
        
        lbl_Subtitle.text = "Para tornar o design de movimento mais acessível recomenda-se que:"
        lbl_Subtitle.lineBreakMode = NSLineBreakMode.byWordWrapping
        lbl_Subtitle.numberOfLines = 0
        scrollViewSubtitle.addSubview(lbl_Subtitle)
        lbl_Subtitle.edgeTo(scrollViewSubtitle)
        
        lbl_SecondText.text = "O uso do parallax seja feito com moderação, pois como é uma ilusão de ótica usada para dar profundidade pode causar náusea e desorientação;\n\nEvitar movimentos muitos grandes ou que preenchem toda a tela, pois pode causar enjôo e desorientação;\n\nA animação deve acontecer sutilmente após uma ação do usuário, pois quando automático/inesperado pode causar desconforto;\n\nManter a animação no ponto de foco para guiar o usuário e não dispersá-lo;\n\nSempre oferecer a opção do usuário minimizar ou eliminar o movimento. É importante ter certeza que o usuário compreenderá a interface mesmo sem as animações;\n\nSempre testar tudo com um leitor de tela para detectar se há algum problema. Para tornar essa etapa mais rápida e precisa, designers e desenvolvedores devem trabalhar em conjunto.\n\n"
        scrollViewSecondText.addSubview(lbl_SecondText)
        lbl_SecondText.edgeTo(scrollViewSecondText)
        
        lbl_TitleRef.text = "Referências"
        scrollViewTitleRef.addSubview(lbl_TitleRef)
        lbl_TitleRef.edgeTo(scrollViewTitleRef)
        
        lbl_Source.text = "How to Make Motion Design Accessible: UX Choreography Part Two - User Experience Magazine por Alik Brundett\nIlustração - Stories by Freepik"
        scrollViewSource.addSubview(lbl_Source)
        lbl_Source.edgeTo(scrollViewSource)
    }
}


//MARK: HIG
class HIGVC: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        view.backgroundColor = .some(#colorLiteral(red: 1, green: 0.9610419869, blue: 0.939756453, alpha: 1))
        
        clearSections()
        
        scrollViewTitle = DScrollViewElement(height: 60)
        scrollViewImage = DScrollViewElement(height: 250)
        scrollViewText = DScrollViewElement(height: 1010)
        scrollViewTitleRef = DScrollViewElement(height: 20)
        scrollViewSource = DScrollViewElement(height: 90)
        
        view.addScrollView(scrollView,
                           withSafeArea: .all,
                           hasStatusBarCover: true,
                           statusBarBackgroundColor: .white,
                           container: scrollViewContainer,
                           elements: [scrollViewTitle,
                                      scrollViewImage,
                                      scrollViewText,
                                      scrollViewTitleRef,
                                      scrollViewSource])
        setElements()
        
        lbl_Title.text = "HIG"
        scrollViewTitle.addSubview(lbl_Title)
        lbl_Title.edgeTo(scrollViewTitle)
        
        imageView.image = UIImage(named: "hig")
        scrollViewImage.addSubview(imageView)
        imageView.edgeTo(scrollViewImage)
        
        lbl_Text.text = "Em um resumo sobre a seção geral e de acessibilidade voltada para Motion, a HIG (Human Interface Guidelines) fornece as seguintes orientações:\n\nUsar a animação de forma criteriosa e não apenas por usar, pois as pessoas podem se sentir desconectadas e distraídas. Portanto utilizar somente quando vital para a finalidade do aplicativo, pois as pessoas devem conseguir usá-lo sem depender de nenhuma animação;\n\nTestar para garantir o bom funcionamento;\n\nBuscar o realismo, pois movimentos que não fazem sentido ou desafiam as leis da física podem desorientar os usuários;\n\nManter uma animação familiar e fluída comparável às animações nativas do iOS. No caso de uma experiência imersiva, como um jogo, não precisa se apegar muito a isso;\n\nReproduzir de forma mais suave ou eliminar a animação quando o usuário ativar a opção de reduzir movimento nas preferências de acessibilidade. Nesse caso, evitar animar alterações de profundidade no eixo Z e substituir um slide por fade são algumas das sugestões;\n\nEvitar reproduções automáticas (vídeos e efeitos) e fornecer um botão ou outra forma de controlar;\n\nSer cauteloso ao exibir elementos em movimento ou piscando, pois podem perturbar. Em alguns casos, elementos intermitentes podem causar episódios epiléticos. Portanto, evitar movimento e piscar como única maneira de transmitir informações.\n\n"
        
        scrollViewText.addSubview(lbl_Text)
        lbl_Text.edgeTo(scrollViewText)
        
        lbl_TitleRef.text = "Referências"
        scrollViewTitleRef.addSubview(lbl_TitleRef)
        lbl_TitleRef.edgeTo(scrollViewTitleRef)
        
        lbl_Source.text = "Animation - Human Interface Guidelines (Apple)\nAppearance Effects and Motion - Human Interface Guidelines (Apple)\nIlustração - Stories by Freepik"
        scrollViewSource.addSubview(lbl_Source)
        lbl_Source.edgeTo(scrollViewSource)
    }
}

//MARK: TIPS

class TipsVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        view.backgroundColor = .some(#colorLiteral(red: 1, green: 0.9610419869, blue: 0.939756453, alpha: 1))
        
        clearSections()
        
        scrollViewTitle = DScrollViewElement(height: 60)
        scrollViewImage = DScrollViewElement(height: 250)
        scrollViewText = DScrollViewElement(height: 820)
        scrollViewSubtitle = DScrollViewElement(height: 90)
        scrollViewTitleRef = DScrollViewElement(height: 20)
        scrollViewSource = DScrollViewElement(height: 90)
        
        view.addScrollView(scrollView,
                           withSafeArea: .all,
                           hasStatusBarCover: true,
                           statusBarBackgroundColor: .white,
                           container: scrollViewContainer,
                           elements: [scrollViewTitle,
                                      scrollViewImage,
                                      scrollViewText,
                                      scrollViewSubtitle,
                                      scrollViewTitleRef,
                                      scrollViewSource])
        setElements()
        
        lbl_Title.text = "Dicas de implementação"
        scrollViewTitle.addSubview(lbl_Title)
        lbl_Title.edgeTo(scrollViewTitle)
        
        imageView.image = UIImage(named: "tip")
        scrollViewImage.addSubview(imageView)
        imageView.edgeTo(scrollViewImage)
        
        lbl_Text.text = "Para auxiliar o processo de planejamento, seguem algumas dicas:\n\nÉ preciso tomar cuidado com animações muito complexas, principalmente em microinterações, pois nesses casos o motion design deve servir como um complemento da experiência e não dispersar o usuário;\n\nAo aplicar o motion design nas interfaces deve-se estabelecer um tom, o que engloba a personalidade, o estilo de animação, entre outros;\n\nListar os elementos no app relacionado a cada uma das categorias (material, funcional e delightful) pode ajudar no desenvolvimento;\n\nPesquisar referências visuais e de código facilita o design e a programação;\n\nA aplicação do motion design deve ser feita aos poucos, começando pelos pontos mais importantes e que causarão mais impacto;\n\nPode-se pensar em um ou dois itens extras para trabalhar a personalidade da marca, como um mascote, um elemento do logo, entre outros. Sempre usando com moderação;\n\nÉ preciso realizar testes com usuários para verificar se o impacto é positivo ou negativo, quais pontos a serem melhorados, etc.\n\n"
        
        scrollViewText.addSubview(lbl_Text)
        lbl_Text.edgeTo(scrollViewText)
        
        lbl_Subtitle.text = "Relembrando que o motion design é para reforçar, não para confundir ou desorientar.\n\n"
        lbl_Subtitle.lineBreakMode = NSLineBreakMode.byWordWrapping
        lbl_Subtitle.numberOfLines = 0
        scrollViewSubtitle.addSubview(lbl_Subtitle)
        lbl_Subtitle.edgeTo(scrollViewSubtitle)
        
        lbl_TitleRef.text = "Referências"
        scrollViewTitleRef.addSubview(lbl_TitleRef)
        lbl_TitleRef.edgeTo(scrollViewTitleRef)
        
        lbl_Source.text = "How to Make Motion Design Accessible: UX Choreography Part Two - User Experience Magazine por Alik Brundett\nIlustração - Stories by Freepik"
        scrollViewSource.addSubview(lbl_Source)
        lbl_Source.edgeTo(scrollViewSource)
    }
}


//MARK: CLEAR SECTION
func clearSections(){
    scrollViewTitle.isHidden = true
    scrollViewImage.isHidden = true
    scrollViewText.isHidden = true
    scrollViewSubtitle.isHidden = true
    scrollViewSecondText.isHidden = true
    scrollViewTitleRef.isHidden = true
    scrollViewSource.isHidden = true
}


//MARK: SET ELEMENTS
func setElements(){
    lbl_Title.textAlignment = .center
    lbl_Title.font = UIFont.boldSystemFont(ofSize: 25)
    imageView.contentMode = .scaleAspectFit
    lbl_Text.lineBreakMode = NSLineBreakMode.byWordWrapping
    lbl_Text.numberOfLines = 0
    lbl_Text.textAlignment = .left
    lbl_Text.font = UIFont.systemFont(ofSize: 20)
    lbl_Subtitle.textAlignment = .center
    lbl_Subtitle.font = UIFont.boldSystemFont(ofSize: 20)
    lbl_SecondText.lineBreakMode = NSLineBreakMode.byWordWrapping
    lbl_SecondText.numberOfLines = 0
    lbl_SecondText.textAlignment = .left
    lbl_SecondText.font = UIFont.systemFont(ofSize: 20)
    lbl_TitleRef.textAlignment = .left
    lbl_TitleRef.font = UIFont.boldSystemFont(ofSize: 15)
    lbl_Source.lineBreakMode = NSLineBreakMode.byWordWrapping
    lbl_Source.numberOfLines = 0
    lbl_Source.textAlignment = .left
    lbl_Source.font = UIFont.italicSystemFont(ofSize: 15)
}
