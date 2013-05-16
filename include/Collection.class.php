<?php


/*
 *
 */
 
class Collection {
	
	private $annee; 
	private $saison; 
	
	private $baseUrl;
	
	private $dirCollection;
	
	
	const COLLECTION_BASE_DIR = "img/collections/";
	
	public function __construct() {
		
		
			
		
		
	}

		
	/**
	 *
	 */	
	public function getAnnee(){
		return $this->annee;
	}
	
	/**
	 *
	 */	
	public function getSaison(){
		return $this->saison;
	}
	
	public function getDirCollection() {
		return $this->dirCollection;
	}
	
	
	/**
	 *
	 */	
	public function getArraySaison() {
		
		return array("printemps-ete", 
					"automne-hiver",
					);
	}
	
	/**
	 *
	 */	
	public function getBaseUrl() {
		
		return $this->baseUrl;
	}
	
	/**
	 *
	 */	
	public function setSaison($saison){
		
		if( !in_array($saison, self::getArraySaison() ) ) {
			throw new Exception ('Saison inconnue');
		}
		
		$this->saison = $saison;
		
		return $this->saison;
	}
	
	/**
	 *
	 */
	public function setAnnee( $annee ) {
	
/* 		(int)$annee; */
		$length =  strlen($annee);
	//var_dump(strlen($annee));
		if(  $length != 4  ) {
			throw new Exception ($annee . ' Annee incorrect');
			
		}
		
		$this->annee = $annee;
		
		return $this->annee;
	}
	
	
	/**
	 *
	 */
	public function setDirCollection( $pro = null ) {
		
		if(isset($pro) and $pro == "pro") {
			$this->dirCollection =  self::COLLECTION_BASE_DIR . $pro . "/" .  $this->saison . "/" . $this->annee . "/";
		}
		else
		{
			$this->dirCollection =  self::COLLECTION_BASE_DIR .  $this->saison . "/" . $this->annee . "/";
		}
		//var_dump($this->dirCollection);
		return $this->dirCollection;
		
	}
	
	
	/**
	 *
	 */
	public function setBaseUrl( $baseUrl ) {
		
		$this->baseUrl = $baseUrl;
		
		return $this->baseUrl;
		
	}
	
	
	
	public function getCollectionImg($pro = null) {
	
		self::setDirCollection($pro);
		
		//var_dump(self::setDirCollection("pro"));
		
		$arrayCollectionImg = array();
		
		$banFiles = array(	".",
							"..", 
							".DS_Store", 
							"index.php", 
							"Icon",
						);
		
		$valideFiles = array(".jpg",
							".jpeg", 
							".png", 
						);
						
						
		
		if( @$collection = opendir($this->dirCollection) ) {
		
			$i = 0;
			
			while( false !== ($fichier = readdir($collection) ) ) {
				
				if( !in_array($fichier, $banFiles)) {
					
					//var_dump(explode(".", $fichier));

					//var_dump($fichier);
					//var_dump($_SERVER['DOCUMENT_ROOT'] . "/" . self::getDirCollection() . $fichier);
						
					$arrayCollectionImg[$i]['url'] = self::getBaseUrl() ."/" . self::getDirCollection().$fichier;
			
			
					//on sépare le nom et l'extension du fichier pour recupere le nom comme id 
					$nomFichier = explode(".",$fichier);
			
					$arrayCollectionImg[$i]['id'] = 'prod'.$nomFichier[0];
			
					list($width, $height, $type, $attr) = getimagesize($_SERVER['DOCUMENT_ROOT'] . "/" . self::getDirCollection() . $fichier);
			
					$arrayCollectionImg[$i]['width'] = $width;
					$arrayCollectionImg[$i]['height'] = $height;
			
					$i++;
					
				}
			}		
		}
		
		//var_dump($arrayCollectionImg);
		
		if( count($arrayCollectionImg) == 0 ) {
			throw new Exception( "Collection vide" );
		}
		return $arrayCollectionImg;
		
	}
	
	
	public function isProConnected() {
		if( isset($_SESSION['lpa_pro'])) {
			return true;
		}
		return false;
	}
	
	
	
	
} 