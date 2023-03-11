<?php

namespace App\Controller\Admin;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use App\Entity\Roles;
use App\Entity\Utilisateurs;
use App\Form\ModifierRolesFormType;
use App\Repository\UtilisateursRepository;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

class AdminController extends AbstractController
{

    #[Route('/admin', name: 'app_admin')]
    public function index(UtilisateursRepository $userRepository, Request $request): Response
    {
        $users = $userRepository->findAll();
    
        return $this->render('admin/index.html.twig', [
            'users' => $users,
        ]);
    }

    #[Route('/admin/edit/{id}', name: 'app_admin_edit')]
    public function edit(Request $request, Utilisateurs $user, EntityManagerInterface $entityManager)
    {
        $form = $this->createForm(ModifierRolesFormType::class, $user);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($user);
            $entityManager->flush();

            return $this->redirectToRoute('app_admin');
        }

        return $this->render('admin/edit.html.twig', [
            'form' => $form->createView(),
            'users' => $user,
        ]);
    }
}
