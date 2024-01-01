import 'package:app_finance/data/1.dart';

List<money> geter() {
  money upwork = money();
  upwork.name = 'upwork';
  upwork.fee = '6500';
  upwork.time = 'today';
  upwork.image = 'Transfer.png';
  upwork.buy = false;
  money startbucks = money();
  startbucks.buy = true;              
  startbucks.fee = '15';
  startbucks.image = 'Transfer.png';
  startbucks.name = 'starbucks';
  startbucks.time = 'today';
  money transfer = money();
  transfer.buy = true;
  transfer.fee = '100';
  transfer.image = 'Transfer.png';
  transfer.name = 'transfer for sam';
  transfer.time = 'jan 30, 2022';
  return [upwork, startbucks, transfer, upwork, startbucks, transfer,];
}
