@extends('front.layouts.app')
@section('content')
<div class="breadcrumbs_area">
    <div class="container">   
        <div class="row">
            <div class="col-12">
                <div class="breadcrumb_content">
                    <h3>NOTRE COOPÉRATIVE
                    </h3>
                    <ul>
                        <li><a href="/about">home</a></li>
                        <li>NOTRE COOPÉRATIVE
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>         
</div>
    <!--about section area -->
    <section class="about_section"> 
        <div class="container">
             <div class="row">
                 <div class="col-12">
                    <figure>
                         <div class="about_thumb">
                             <img src="assets/img/about/about1.jpg" width="1200"  alt="">
                         </div>
                         <figcaption class="about_content">
                             <h1>La Coopérative Mogador est née en 05-06- 2007 Située à centre rural OUNARA province d’Essaouira</h1>
                             <p>extraction et commercialisation d’huile d’argan à usage alimentaire au cosmétique ; amlou ; la plante Stévia  La création d’un restaurant à la terrasse de la coopérative : activité génératrice de revenus pour les adhérentes.
                                -Réceptionner des groupes touristiques dans le cadre du tourisme solidaire.
                                - Echange de visites avec diverses coopératives.
                                - Participation aux journées de formation organisées par la DPA d’Essaouira.
                                - Développer les produits de la coopérative : savon traditionnel à base d’argan et de STEVIA</p>
                             <div class="about_signature">
                                 <img src="assets/img/about/about-us-signature.png" alt="">
                             </div>
                         </figcaption>
                     </figure>
                 </div>    
             </div>  
         </div> 
     </section>
     <!--about section end-->
 
     <!--chose us area start-->
     <div class="choseus_area" data-bgimg="assets/img/about/about-us-policy-bg.jpg">
         <div class="container">   
             <div class="row">
                 <div class="col-lg-4 col-md-4">
                     <div class="single_chose">
                         <div class="chose_icone">
                             <img src="assets/img/about/About_icon1.png" alt="">
                         </div>
                         <div class="chose_content">
                             <h3>Disponibilité</h3>
                             <p>Pour votre service nous somme disponible 24/24h ,7j/7j .

                            </p>
 
                         </div>
                     </div>
                 </div>
                 <div class="col-lg-4 col-md-4">
                     <div class="single_chose">
                         <div class="chose_icone">
                             <img src="assets/img/about/About_icon2.png" alt="">
                         </div>
                         <div class="chose_content">
                             <h3>Processus naturel</h3>
                             <p>nous somme une coopérative spécialisée dans la production d'huile d'argan et de cosmétiques naturels.</p>
 
                         </div>
                     </div>
                 </div>
                 <div class="col-lg-4 col-md-4">
                     <div class="single_chose">
                         <div class="chose_icone">
                             <img src="assets/img/about/About_icon3.png" alt="">
                         </div>
                         <div class="chose_content">
                             <h3>Produits biologiques</h3>
                             <p>tous les produits sont naturels à 100%.</p>
 
                         </div>
                     </div>
                 </div>
             </div>
         </div>    
     </div>
 
     <!--chose us area end-->      
 
        
 
     <!--testimonial area start-->
     <div class="faq-client-say-area">
         <div class="container">   
             <div class="row">
                 <div class="col-lg-8 col-md-6">
                     <div class="faq-client_title">
                         <h2>Qui sommes-nous ?</h2>
                     </div>
                     <div class="faq-style-wrap" id="faq-five">
                         <!-- Panel-default -->
                         {{-- <div class="panel panel-default">
                             <div class="panel-heading">
                                 <h5 class="panel-title">
                                     <a id="octagon" class="collapsed" role="button" data-toggle="collapse" data-target="#faq-collapse1" aria-expanded="true" aria-controls="faq-collapse1"> <span class="button-faq"></span>Conditions générales de vente</a>
                                 </h5>
                             </div>
                             <div id="faq-collapse1" class="collapse show" aria-expanded="true" role="tabpanel" data-parent="#faq-five">
                                 <div class="panel-body">
                                     <p>Les conditions générales de vente suivantes régissent l'ensemble des transactions établies sur le catalogue web de Mogador.</p>
                                     <p>Toute commande passée sur ce site suppose du client son acceptation inconditionnelle et irrévocable de ces conditions.
                                     </p>
                                     <p> Le présent contrat est un contrat à distance qui a pour objet de définir les droits et obligations des parties dans le cadre de la vente des produits de La Coopérative Mogador , sur Internet, par l’intermédiaire de la plate-forme e. http://www.mogador.ma un service et une marque déposée par Mogador</p>
                                     <p>Pour régler votre commande, vous choisissez le moyen de paiement parmi ceux proposés par Mogador au niveau de la page de paiement.
                                    </p>
                                     <p>Dans ce cas, la remise de la transaction pour débit de votre compte est effectuée dans la journée qui suit la date de la confirmation de livraison.</p>
                                     <p>Vos paiements Multi-canaux sont sécurisés par le Centre Monétique Interbancaire (CMI) qui offre un service de paiement entièrement sécurisé.</p>
                                     <p>Le Consommateur garantit la Coopérative Mogador qu’il dispose des autorisations éventuellement nécessaires pour utiliser le mode de paiement choisi par lui, lors de la validation du Bon de commande.</p>
                                     <p>En cas de paiement par carte bancaire, les dispositions relatives à l’utilisation frauduleuse du moyen de paiement prévues dans les conventions conclues entre le Consommateur et l’émetteur de la carte entre la Société Mogador et son établissement bancaire s’appliquent.</p>
                                    </div>
                             </div>
                         </div> --}}
                         <!--// Panel-default -->
 
                         <!-- Panel-default -->
                         <div class="panel panel-default">
                             <div class="panel-heading">
                                 <h5 class="panel-title">
                                     <a class="collapsed" role="button" data-toggle="collapse" data-target="#faq-collapse2" aria-expanded="false" aria-controls="faq-collapse2"> <span class="button-faq"></span>Qui sommes-nous ?</a>
                                 </h5>
                             </div>
                             <div id="faq-collapse2" class="collapse" aria-expanded="false" role="tabpanel" data-parent="#faq-five">
                                 <div class="panel-body">
                                     <p>La Coopérative Mogador est née en 05-06- 2007 Située à centre rural OUNARA province d’Essaouira
                                        Domaines d’activité : extraction et commercialisation d’huile d’argan à usage alimentaire au cosmétique ; amlou ; la plante Stévia
                                        Nombre des adhérentes : en 2007 : 11 adhérentes ; en 2010 : 30 adhérentes ; en 2012 : 33 adhérentes ; en 2015 : 35 adhérentes
                                        Bureau d’administration :
                                        </p>
                                        <ul>
                                            <li>- Présidente : Mme Hasna EL HROUD</li>
                                            <li>- Vice –présidente : Mme RABIA EL HROUD</li>
                                            <li>- Secrétaire : Mlle Fouzia HAIDA</li>
                                            <li>- Vice-secrétaire : Mme SADIA AYAD</li>
                                            <li>- Trésorière : Mlle Khadija HAIDA</li>
                                            <li>- Vice- trésorière : Mlle ROUKAIA IDDER</li>
                                        </ul>
                                     
                                 </div>
                             </div>
                         </div>
                         <!--// Panel-default -->
 
                         <!-- Panel-default -->
                         <div class="panel panel-default">
                             <div class="panel-heading">
                                 <h5 class="panel-title">
                                     <a class="collapsed" role="button" data-toggle="collapse" data-target="#faq-collapse3" aria-expanded="false" aria-controls="faq-collapse3"> <span class="button-faq"></span>Objectifs</a>
                                 </h5>
                             </div>
                             <div id="faq-collapse3" class="collapse" role="tabpanel" data-parent="#faq-five">
                                 <div class="panel-body">
                                     <ul>
                                     <li>- Garantir aux adhérentes un revenu permanant et équitable en vue d’améliorer leur niveau social et économique et les intégrer au dynamisme local.</li>
                                            <li>- Diminuer le cout de la matière première par l’approvisionnement en grandes quantités.</li>
                                                <li>- Améliorer la qualité du produit final et le valoriser.</li>
                                                    <li> - Commercialiser le produit final dans des conditions adéquates et valorisantes et l’ouverture sur des marchés divers.</li>
                                                        <li> - Faire bénéficier les adhérentes des cours de lutte contre l’analphabétisme.</li>
                                                            <li> - Sensibiliser les adhérentes aux problèmes de santé de la femme et des enfants par l’organisation de campagnes de sensibilisation en partenariat avec des associations locales.</li></ul>
                                     
                                 </div>
                             </div>
                         </div>
                         <!--// Panel-default -->
 
                         <!-- Panel-default -->
                         <div class="panel panel-default">
                             <div class="panel-heading">
                                 <h5 class="panel-title">
                                     <a class="collapsed" role="button" data-toggle="collapse" data-target="#faq-collapse4" aria-expanded="false" aria-controls="faq-collapse4"> <span class="button-faq"></span>Participation aux salons :</a>
                                 </h5>
                             </div>
                             <div id="faq-collapse4" class="collapse" role="tabpanel" data-parent="#faq-five">
                                 <div class="panel-body">
                                     <p>Etranger : Salon en Belgique : SOLID’EXCHANGE à Bruxelles 2013, SIAP de Paris 2014, Green Week Berlin 2015,2016, 2017 et 2018 World food Moscou 2015, Salon agricole de Lisbonne 2016</p>
                                     <p>- Maroc : SIAM de Meknès 2009, 2010, 2013, 2014, 2015 et 2016 ; Salon agricole régional de Safi 2012 et 2013, Salon agricole régional de Fès 2012,2013 et 2014.</p>
                                     <p>- Congrès des Femmes africaines chefs d’entreprises 2013 à Marrakech.</p>
                                 </div>
                             </div>
                         </div>
                         <!--// Panel-default -->
                           <!-- Panel-default -->
                           <div class="panel panel-default">
                            <div class="panel-heading">
                                <h5 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-target="#faq-collapse4" aria-expanded="false" aria-controls="faq-collapse4"> <span class="button-faq"></span>Activités de la coopérative:</a>
                                </h5>
                            </div>
                            <div id="faq-collapse4" class="collapse" role="tabpanel" data-parent="#faq-five">
                                <div class="panel-body">
                                    <ul>
                                    <li> - La création d’un restaurant à la terrasse de la coopérative : activité génératrice de revenus pour les adhérentes.</li>
                                    <li> - Réceptionner des groupes touristiques dans le cadre du tourisme solidaire.</li>
                                    <li> - Echange de visites avec diverses coopératives.</li>
                                    <li> - Participation aux journées de formation organisées par la DPA d’Essaouira.</li>
                                    <li> - Développer les produits de la coopérative : savon traditionnel à base d’argan et de STEVIA</li>
                                </ul>
                                    
                                    
                                </div>
                            </div>
                        </div>
                        <!--// Panel-default -->
                        <!-- Panel-default -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h5 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-target="#faq-collapse4" aria-expanded="false" aria-controls="faq-collapse4"> <span class="button-faq"></span>Partenaires :</a>
                                </h5>
                            </div>
                            <div id="faq-collapse4" class="collapse" role="tabpanel" data-parent="#faq-five">
                                <div class="panel-body">
                                <ul>
                                   <li> - INDH : construction d’un nouveau local de la coopérative en 2011, coût total 550.000,00 DH (Participation de la coopérative : 50.000,00 DH)</li>
                                   <li>- Direction des domaines : lot de 200m² pour la construction du siège de la coopérative</li>
                                   <li>- Plan Maroc vert : Machines de production et de filtration ; bouteilles d’emballage.</li>
                                   <li> - Maroc TSWIQ : commercialisation des produits de la coopérative</li>
                                   <li> - DPA : Formations, salons, matière première, rénovations....</li>
                                   <li>- Commune rural OUNARA : assistance administrative et logistique</li>
                                   <li> - Fondation Mohammed 5 pour la solidarité : Soutien pour la commercialisation</li>
                                   
                                </ul>
                                </div>
                            </div>
                        </div>
                        <!--// Panel-default -->
                        
                     </div>
 
                 </div>
                <div class="col-lg-4 col-md-4">
                     <!--testimonial area start-->
                     <div class="testimonial_area  testimonial_about">
                        <img src="assets/img/about/mogador.jpg"   alt="">
                     </div>
                     <!--testimonial area end-->
                 </div>
             </div>
         </div>    
     </div>
     <!--testimonial area end-->
@endsection