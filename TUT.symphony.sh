######### symphony #######
composer create-project symfony/framework-standard-edition Symfony-version-2.8.31 "2.8.31"
php bin/console debug:event-dispatcher
php bin/console debug:event-dispatcher kernel.exception
php bin/console debug:container

# сушность это таблица

# - создание сушьности
    
    # -- обновление сушьности
    php app/console doctrine:schema:update --force
    php app/console doctrine:generate:entities AppBundle # generate get set
    # php app/console doctrine:generate:entity
    # https://symfony.com.ua/doc/current/quick_tour/the_big_picture.html
    php bin/console doctrine:mapping:info
# - создание контроллера
php app/console debug:router --env=prod
php app/console generate:controller
php app/console generate:controller --actions="showPostAction:/article/{id} getListAction:/_list-posts/{max}:AcmeBlogBundle:Post:list_posts.html.twig"  




- создание роута (путь) маршрута
-

- generate admin
# https://symfony.com/legacy/doc/jobeet/1_4/ru/12?orm=Propel
# php bin/console doctrine:query:sql 'SELECT * FROM lolol'

# controller settings

//use http\Env\Request;
//use http\Env\Response;
use App\Entity\Lolol;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Component\HttpKernel\Kernel;
use Symfony\Component\HttpKernel\HttpKernel;
use Doctrine\Common\Persistence\Mapping;
use Symfony\Component\Validator\Constraints\Language;
use Doctrine\DBAL\Schema\Schema;
use Symfony\Bundle\TwigBundle\Controller\ExceptionController;
//use Symfony\Component\DependencyInjection\Exception;

# url ajax?item=test
'id' => $request->query->get('item')

{{ path('welcome') }}
eturn $this->json(array('username' => 'jane.doe'));

'controller_name' => $request->server->get('HTTP_HOST'),
'controller_name' => $request->headers->get('host'),
'controller_name' => $this->json(array('username' => 'jane.doe')),
'controller_name' => $request->isXmlHttpRequest(), // is it an Ajax request?

return $this->redirectToRoute('home');
return $request->cookies->get();

хлебные крошки
'controller_name' => $request->getPathInfo(),

$request = Request::createFromGlobals();

$this->container->has('doctrine')


/**
 * @Route("/ajax", name="ajax")
 */
public function ajaxAction(Request $request)
{
   $value = "default";
   $selected = $request->query->get('item');

   if ($request->isXmlHttpRequest()) {
    switch($selected){
        case "Flower":
            $value = "Rose";
            break;
        case "Car":
            $value = "BMW";
            break;
        case "City":
            $value = "Taft";
            break;
        case "Country":
            $value = "USA";
            break;
    }
   }

   return new Response( $value );
}

use Symfony\Component\HttpFoundation\Request;

public function updateAction(Request $request)
{
    // ...

    if ($form->isSubmitted() && $form->isValid()) {
        // выполните какую-то обработку

        $this->addFlash(
            'notice',
            'Изменения сохранены!'
        );
        // $this->addFlash() это эквивалент $request->getSession()->getFlashBag()->add()

        return $this->redirectToRoute(...);
    }

    return $this->render(...);
}
# https://symfony.com.ua/doc/current/controller.html



    /**
     * @Route(
     *     "/category/{name}",
     *     name="route2",
     *     requirements={"default"="한국어"},
     *     options={"utf8": true}
     * )
     */

     {{ path('menuBlog', {'id': id})|escape('url') }}


{% if id is defined %}
    {{ id }}
{% else %}
    {{ emptyinfo }}
{% endif %}