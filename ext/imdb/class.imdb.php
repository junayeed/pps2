<?php
/**
 * @author Fabian Beiner <fabianDOTbeinerATgmailDOTcom>
 * @version 2.0alpha (without CURL)
 *
 * @comment Original idea by David Walsh <davidATdavidwalshDOTname>, thanks! Your blog rocks ;)
 *          I did this script in the middle of the night while being ill, no guarantee for anything!
 *
 * @license http://creativecommons.org/licenses/by-sa/3.0/de/deed.en_US
 *          Creative Commons Attribution-Share Alike 3.0 Germany
 */
 
class IMDB 
{
   function __construct($url) 
   {
      $imdb_content       = $this->imdbHandler($url);
      
      //echo(str_replace(array("\r\n", "\n", "\r"), "", $imdb_content));
      
      $this->movie        = trim($this->getMatch('|<title>(.*) - IMDb</title>|Uis', $imdb_content));
      $this->director     = trim($this->getMatch('|<div class="txt-block">  <h4 class="inline">    Director:  </h4><a  href=(.*)">(.*)</a></div>|Uis', str_replace(array("\r\n", "\n", "\r"), "", $imdb_content), 2));
      $this->url_director = trim($this->getMatch('|<h4 class="inline">Director:</h4>(.*)</div><div|Uis', $imdb_content));
      $this->release_date = trim($this->getMatch('|<h4 class="inline">Release Date:</h4>(.*)<span|Uis', $imdb_content));
      $this->run_time     = trim($this->getMatch('|Runtime:</h4>(.*)</div>|Uis',$imdb_content));
      $this->rating       = trim($this->getMatch('|<span class="rating-rating">(.*)<span>/10</span></span>|Uis', $imdb_content));
      $this->country_url  = trim($this->getMatch('|<h4 class="inline">Country:</h4>(.*)&nbsp;<span|Uis', $imdb_content));
      $this->country      = trim($this->getMatch('|<a href="(.*)>(.*)</a>|Uis', $this->country_url, 2));
      
      
      //$this->url_country  = trim($this->getMatch('|<h5>Country:</h5><a href="(.*)">(.*)</a></div>|Uis', $imdb_content));       
      //$this->plot         = trim($this->getMatch('|<h5>Plot:</h5>(.*) <a|Uis', $imdb_content));
      //$this->mpaa         = trim($this->getMatch('|<h5><a href="/mpaa">MPAA</a>:</h5> (.*)</div>|Uis', $imdb_content));
      //$this->votes        = trim($this->getMatch('|&nbsp;&nbsp;<a href="ratings" class="tn15more">(.*) votes</a>|Uis', $imdb_content));
      
   }
 
   function imdbHandler($input) 
   {
      if (!$this->getMatch('|^http://(.*)$|Uis', $input)) 
      {
         $tmpUrl     = 'http://imdb.com/find?s=all&q='.str_replace(' ', '+', $input).'&x=0&y=0'; 
         //echo_br("TEMP URL :::" . $tmpUrl);
         
         $data       = file_get_contents($tmpUrl);
         
         $foundMatch = $this->getMatch('|<p style="margin:0 0 0.5em 0;"><b>Media from&nbsp;<a href="(.*)" onclick="(.*)">(.*)</a> ((.*))</b></p>|Uis', $data);
         
         if ($foundMatch) 
         {
            $this->url = 'http://www.imdb.com'.$foundMatch;
         } 
         else 
         {
            $this->url = '';
            return 0;
         }
      } 
      else 
      {
         $this->url = $input;
      }
      
      $data = file_get_contents($this->url); 
      
      return str_replace("\n",'',(string)$data);
   }
 
   function getMatch($regex, $content, $index=1) 
   {
      preg_match($regex, $content, $matches);
      
      return $matches[(int)$index];
   }
 
   function showOutput() 
   {
      if ($this->url) 
      {
         $content.= 'Film ::: '         . $this->movie . '</p>';
         $content.= 'Director ::: '     . $this->director.'</a></p>';
         $content.= 'Release Date ::: ' . $this->release_date.'</p>';
         $content.= 'Run Time ::: '     . $this->run_time.'</p>';
         $content.= 'Rating  ::: '      . $this->rating.'/10</p>';
         $content.= 'Country ::: '      . $this->country . '</p>';
         
         //$content.= '<h2>Country</h2><p><a href="http://www.imdb.com'.$this->url_country.'">'.$this->country.'</a></p>';
         //$content.= '<h2>Full Details</h2><p><a href="'.$this->url.'">'.$this->url.'</a></p>';
         //$content.= '<h2>Votes</h2><p>'.$this->votes.' votes</p>';
         //$content.= '<h2>Plot</h2><p>'.$this->plot.'</p>';
         //$content.= '<h2>MPAA</h2><p>'.$this->mpaa.'</p>';
         
         echo $content;
      } 
      else 
      {
         echo 'Sorry, nothing found! :(';
      }
   }
}