
class MedicineList {
   final int medicineId;
   final String medicineName;
   final String medicineCompanyName;
   final double discountedPrice;
   final double actualPrice;

  MedicineList(
      {
        required this.medicineId,
        required this.medicineName,
        required this.medicineCompanyName,
        required this.discountedPrice,
        required this.actualPrice});

}
