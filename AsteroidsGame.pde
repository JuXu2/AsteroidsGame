public class Asteroids 
{
  private ArrayList<Asteroid> asteroids;
  private ArrayList<Bullet> bullets;
  private Ship ship;
  
  public static void main(String[] args) 
  {
    Asteroids game = new Asteroids();
    game.start();    
  }
  
  public Asteroids()
  {  asteroids = new ArrayList<Asteroid>();
    bullets = new ArrayList<Bullet>();
  }  
  
  public void start()
  {  // Create ship
    ship = new Ship(200,200,0,0,30,30,0,0,5);
    System.out.println("Ship: "+ship);
    
    // Create 3 asteroids
    for (int i=1; i <= 3; i++)
    {  Asteroid ast = new Asteroid(100*i, 100*i, 10*i, 10*i, 20*i, 20*i, i);
      asteroids.add(ast);
    }
    // Print asteroids in list
    System.out.println("\nAsteroids: ");
    for (int i=0; i < asteroids.size(); i++)
      System.out.println(asteroids.get(i));
    
    // Create 2 bullets asteroids
    for (int i=4; i <= 5; i++)
    {  Bullet blt = new Bullet(100*i, 100*i, 10*i, 10*i);
      bullets.add(blt);
    }
    // Print bullets in list
    System.out.println("\nBullets: ");
    for (int i=0; i < bullets.size(); i++)
      System.out.println(bullets.get(i));
    
  }
}

