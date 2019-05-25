package com.miniproject.CarRental.Controller;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.miniproject.CarRental.Model.Vehicle;
import com.miniproject.CarRental.Service.VehicleService;

@Controller
public class VehicleController {

	@Autowired
	VehicleService vehicleService;

	@RequestMapping("/addvehicle")
	public String vehicle(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_ADD_VEHICLE");
		return "homeadmin";
	}

	@PostMapping("/save-vehicle")
	public String addNewVehicle(@ModelAttribute Vehicle vehicle, BindingResult bindingResult,
			HttpServletRequest request, @RequestParam("file") MultipartFile file) throws IOException {

		vehicle.setImageName(file.getOriginalFilename());
		vehicle.setImageVehicle(file.getBytes());
		vehicleService.saveMyVehicle(vehicle);

		try {
			InputStream inputStream = new ByteArrayInputStream(file.getBytes());

			File newFile = new File("D:/images/" + file.getOriginalFilename());
			if (!newFile.exists()) {
				newFile.createNewFile();
			}
			OutputStream outputStream = new FileOutputStream(newFile);
			int read = 0;
			byte[] bytes = new byte[1024];

			while ((read = inputStream.read(bytes)) != -1) {
				outputStream.write(bytes, 0, read);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		request.setAttribute("mode", "MODE_HOME");
		return "homeadmin";
	}

	@GetMapping("/show-vehicles")
	public String showAllVehicles(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setAttribute("vehicles", vehicleService.showAllVehicles());
		request.setAttribute("mode", "ALL_VEHICLES_ADMIN");
		return "homeadmin";

	}

	@GetMapping("/vehicles")
	public String showVehicles(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setAttribute("vehicles", vehicleService.showAllVehicles());
		request.setAttribute("mode", "ALL_VEHICLES");
		return "vehiclepage";

	}

	@RequestMapping("/delete-vehicle")
	public String deleteVehicle(@RequestParam int idVehicle, HttpServletRequest request)
			throws UnsupportedEncodingException {
		vehicleService.deleteMyVehicle(idVehicle);
		request.setAttribute("vehicles", vehicleService.showAllVehicles());
		request.setAttribute("mode", "ALL_VEHICLES");
		return "homeadmin";
	}

	@RequestMapping("/edit-vehicle")
	public String editVehicle(@RequestParam int idVehicle, HttpServletRequest request) {
		request.setAttribute("vehicle", vehicleService.editVehicle(idVehicle));
		request.setAttribute("mode", "MODE_UPDATE_VEHICLE");
		return "homeadmin";
	}

	@RequestMapping("/getImage/{vehicleId}")
	public @ResponseBody byte[] getImage(@PathVariable int vehicleId) {
		Vehicle vehicle = vehicleService.editVehicle(vehicleId);
		return vehicle.getImageVehicle();
	}

}
