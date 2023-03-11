<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\UtilisateursRepository;
use Symfony\Component\Security\Core\Security;
use Symfony\Component\HttpFoundation\Request;
use App\Form\ModifierCompteType;
use App\Entity\UpdateCompte;
use App\Entity\Utilisateurs;
use App\Repository\UpdateCompteRepository;
use Symfony\Component\HttpFoundation\Session\Flash\FlashBagInterface;

class CompteController extends AbstractController
{
    #[Route('/compte', name: 'app_compte')]
    public function index(UtilisateursRepository $u, Security $security): Response
    {
        $user = $this->getUser();
        $userId = $user->getId();
        $compte = $u->findUtilisateurInfoById($userId);

        return $this->render('compte/index.html.twig', [
            'compte' => $compte,
        ]);
    }

    #[Route('/compte/modifier', name: 'app_compte_modifier')]
    public function modifier(Request $request, Security $security, UtilisateursRepository $u): Response
    {
        $new = new UpdateCompte();
        $form = $this->createForm(ModifierCompteType::class, $new);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            
            $user = $this->getUser();

            $u->updateUser($user, $form->getData());
    
            $this->addFlash('success', 'Le compte a été mis à jour avec succès !');

            return $this->redirectToRoute('app_compte');

        }

        return $this->render('compte/modifier.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
