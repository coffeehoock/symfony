<?php

namespace App\Controller;

use App\Entity\Home;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class TController extends Controller
{
    /**
     * @Route("/", name="home")
     */
    public function home()
    {
        $posts = $this->getDoctrine()
            ->getRepository(Home::class)
            ->findAll();

        return $this->render('content/home.html.twig', [
            'posts'    => $posts[0],
            'postslol' => $posts[1],
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
    /**
     * @Route("/about", name="about")
     */
    public function about()
    {
        return $this->render('content/about.html.twig', [
            'controller_name' => 'TController',
        ]);
    }
}
