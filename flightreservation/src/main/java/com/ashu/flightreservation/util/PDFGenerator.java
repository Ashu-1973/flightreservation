package com.ashu.flightreservation.util;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import org.springframework.stereotype.Component;

import com.ashu.flightreservation.entities.Reservation;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;


@Component
public class PDFGenerator {
	
	public void generateItinerary(Reservation reservation,String filePath) {
	
		Document document=new Document();
		try {
			PdfWriter.getInstance(document, new FileOutputStream(filePath));
			document.open();
			
			 Font font = FontFactory.getFont(FontFactory.COURIER, 14, BaseColor.BLACK);
	          Paragraph para = new Paragraph( "FLIGHT RESERVATION", font);
	          para.setAlignment(Element.ALIGN_CENTER);
	          document.add(para);
	          document.add(Chunk.NEWLINE);
			
			document.add(generateTable(reservation));
			document.close();
		} catch (FileNotFoundException | DocumentException e) {
			e.printStackTrace();
		}
		
	}

	private PdfPTable generateTable(Reservation reservation) {
		PdfPTable table = new PdfPTable(2);
		
		PdfPCell cell;
		cell=new PdfPCell(new Phrase("Flight Itinerary"));
		cell.setColspan(2);
		table.addCell(cell);
		cell=new PdfPCell(new Phrase("Flight Details"));
		cell.setColspan(2);
		table.addCell(cell);
		
		table.addCell("Flight Number");
		table.addCell(reservation.getFlight().getFlightNumber());
		
		table.addCell("AirLine");
		table.addCell(reservation.getFlight().getOperatingAirlines());
		
		table.addCell("Departuer City");
		table.addCell(reservation.getFlight().getDepartureCity());
		
		table.addCell("Arrival City");
		table.addCell(reservation.getFlight().getArrivalCity());
		
		
		table.addCell("Date Of Deaparture");
		table.addCell(reservation.getFlight().getDateOfDeparture());
		
		table.addCell("Departure Time");
		table.addCell(reservation.getFlight().getHr()+" : "+reservation.getFlight().getMin()+" "+reservation.getFlight().getPeriod());
		
		cell=new PdfPCell(new Phrase("Passenger Details"));
		cell.setColspan(2);
		table.addCell(cell);
		
		table.addCell("First Name");
		table.addCell(reservation.getPassenger().getFirstName());
		
		table.addCell("Last Name");
		table.addCell(reservation.getPassenger().getLastName());
		
		table.addCell("Email");
		table.addCell(reservation.getPassenger().getEmail());
		
		table.addCell("Phone No.");
		table.addCell(reservation.getPassenger().getPhone());

		
		
		return table;
	}
	
	

}
