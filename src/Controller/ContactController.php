<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\ContactRepository;
use Symfony\Component\Security\Core\Security;

class ContactController extends AbstractController
{
    #[Route('/contact', name: 'app_contact')]
    public function index(ContactRepository $c, Security $security): Response
    {
        $user = $this->getUser();
        $userId = $user->getId();
        $contacts = $c->findContactsInfoById($userId);

        return $this->render('contact/index.html.twig', [
            'contacts' => $contacts,
        ]);
    }
}
