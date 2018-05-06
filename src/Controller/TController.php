<?php

namespace App\Controller;

use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class TController extends Controller
{
    /**
     * @Route("/", name="home")
     */
    public function home()
    {
        return $this->render('content/home.html.twig', [
            'controller_name' => 'TController',
        ]);
        
    }
	/**
	 * @Route("/news", name="news")
	 */
	public function news()
	{
	  return $this->render('content/news.html.twig', [
		'controller_name' => 'TController',
	  ]);
	}
}
