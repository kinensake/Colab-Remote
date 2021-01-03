# Colab-Remote

## Bước 1: Tạo 1 notebook mới:
- Truy cập vào trang: https://colab.research.google.com/

## Bước 2: Chạy dòng code sau:
```
!wget https://raw.githubusercontent.com/kinensake/Colab-Remote/main/RDP.sh &> /dev/null
!chmod +x RDP.sh
!./RDP.sh
```

## Bước 3: Cài đặt chrome-remote-desktop và copy command theo hệ điều hành Debian:
- Bấm vào *https://remotedesktop.google.com/headless* có trong kết quả, thực hiện các bước theo hướng dẫn trong trang sau đó copy command của Debian.
- Quay lại Colab, paste command mới copy vào khung input yêu cầu, rồi nhấn enter.

## Bước 4: Tiến hành nhập mã PIN:
- Colab sẽ yêu cầu nhập mã PIN cho VPS, lúc này ta nhập mã PIN ít nhất 6 chữ số và nhập lại lần nữa theo yêu cầu.

## Bước 5: Truy cập vào VPS:
- Bấm vào đường link *https://remotedesktop.google.com/access/* có trong kết quả (khi đã hoàn thành setup xong).
- Chọn thiết bị từ xa đã tạo và truy cập VPS thôi :v (Password truy cập chính là cái mã PIN đã tạo).
