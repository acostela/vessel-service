package main

import (
	pb "github.com/acostela/vessel-service/proto/vessel"
)

func (repo *VesselRepository) Create(vessel *pb.Vessel) error {
	return repo.collection().Insert(vessel)
}
