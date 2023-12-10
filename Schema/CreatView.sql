CREATE VIEW SponsoredBills AS
SELECT Bill.id, Bill.bill_name, congress_person. name AS Sponsor
FROM Bill
JOIN congress_person ON Bill.sponser_id  = congress_person.id;