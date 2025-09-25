import pygame, random

pygame.init()
pantalla = pygame.display.set_mode((400, 400))
reloj = pygame.time.Clock()

x, y = 180, 350
bola_x, bola_y = random.randint(0, 380), 0
puntos = 0

fuente = pygame.font.SysFont("Arial", 25)

while True:
    for e in pygame.event.get():
        if e.type == pygame.QUIT:
            pygame.quit(); exit()

    teclas = pygame.key.get_pressed()
    if teclas[pygame.K_LEFT]: x -= 5
    if teclas[pygame.K_RIGHT]: x += 5

    bola_y += 5
    if bola_y > 400:
        bola_x, bola_y = random.randint(0, 380), 0
    if x < bola_x < x+50 and y < bola_y < y+20:
        puntos += 1
        bola_x, bola_y = random.randint(0, 380), 0

    pantalla.fill((0,0,0))
    pygame.draw.rect(pantalla, (0,255,0), (x,y,50,20))
    pygame.draw.circle(pantalla, (255,0,0), (bola_x, bola_y), 10)
    texto = fuente.render(f"Puntos: {puntos}", True, (255,255,255))
    pantalla.blit(texto, (10,10))
    pygame.display.flip()
    reloj.tick(30)
