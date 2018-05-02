<?php

namespace App\Controller;

use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class TController extends Controller
{
    /**
     * @Route("/", name="t")
     */
    public function index()
    {
        return $this->render('Global.html.twig', [
            'controller_name' => 'TController',
        ]);
    }
}
