class car {
  late String brand;
  late String model;
  late int year;
  late double milesDriven;
  static int numberOfCars = 0;

  drive (double miles) {
    print('$miles');
  }

  getMilesDriven(String milesDriven) {
    print('$milesDriven');
  }

  getBrand(String brand) {
    print('$brand');
  }
  getModel(String model){
    print('$model');
  }
  getYear(int year){
    print('$year');
  }
  getAge(int age){
    return (age-year);
  }
}
void main (){
  ///carNumber-1
  car car1 = new car();
  car1.brand = 'Toyota Camry';
  car1.year = 2020;
  car1.milesDriven = 10000;
  car.numberOfCars++;

  ///carNumber-2
  car car2 = new car();
  car2.brand = 'Honda Civic';
  car2.year = 2018;
  car2.milesDriven = 8000;
  car.numberOfCars++;

  ///carNumber-3
  car car3 = new car();
  car3.brand = 'Ford F-150';
  car3.year = 2015;
  car3.milesDriven = 15000;
  car.numberOfCars++;

  print("Car 1: ${car1.brand} ${car1.year} Miles: ${car1.milesDriven.toStringAsFixed(0)} Age: ${car1.getAge(2023)}");
  print("Car 2: ${car2.brand} ${car2.year} Miles: ${car2.milesDriven.toStringAsFixed(0)} Age: ${car2.getAge(2023)}");
  print("Car 3: ${car3.brand} ${car3.year} Miles: ${car3.milesDriven.toStringAsFixed(0)} Age: ${car3.getAge(2023)}");
  print("Total number of cars created: ${car.numberOfCars}");
}